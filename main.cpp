#include <AL/al.h>
#include <AL/alc.h>
#include <iostream>
#include <vector>
#include <cstring>
#include <fstream>
#include <bit>
std::int32_t convert_to_int(char* buffer, std::size_t len)
{
  std::int32_t a = 0;
  std::memcpy(&a, buffer, len);
  return a;
}

bool load_wav_file_header(std::ifstream& file,
                          std::uint8_t& channels,
                          std::int32_t& sampleRate,
                          std::uint8_t& bitsPerSample,
                          ALsizei& size)
{
  char buffer[4];
  if(!file.is_open())
    return false;

  // the RIFF
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read RIFF" << std::endl;
    return false;
  }
  if(std::strncmp(buffer, "RIFF", 4) != 0)
  {
    std::cerr << "ERROR: file is not a valid WAVE file (header doesn't begin with RIFF)" << std::endl;
    return false;
  }

  // the size of the file
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read size of file" << std::endl;
    return false;
  }

  // the WAVE
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read WAVE" << std::endl;
    return false;
  }
  if(std::strncmp(buffer, "WAVE", 4) != 0)
  {
    std::cerr << "ERROR: file is not a valid WAVE file (header doesn't contain WAVE)" << std::endl;
    return false;
  }

  // "fmt/0"
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read fmt/0" << std::endl;
    return false;
  }

  // this is always 16, the size of the fmt data chunk
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read the 16" << std::endl;
    return false;
  }

  // PCM should be 1?
  if(!file.read(buffer, 2))
  {
    std::cerr << "ERROR: could not read PCM" << std::endl;
    return false;
  }

  // the number of channels
  if(!file.read(buffer, 2))
  {
    std::cerr << "ERROR: could not read number of channels" << std::endl;
    return false;
  }
  channels = convert_to_int(buffer, 2);

  // sample rate
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read sample rate" << std::endl;
    return false;
  }
  sampleRate = convert_to_int(buffer, 4);

  // (sampleRate * bitsPerSample * channels) / 8
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read (sampleRate * bitsPerSample * channels) / 8" << std::endl;
    return false;
  }

  // ?? dafaq
  if(!file.read(buffer, 2))
  {
    std::cerr << "ERROR: could not read dafaq" << std::endl;
    return false;
  }

  // bitsPerSample
  if(!file.read(buffer, 2))
  {
    std::cerr << "ERROR: could not read bits per sample" << std::endl;
    return false;
  }
  bitsPerSample = convert_to_int(buffer, 2);

  // data chunk header "data"
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read data chunk header" << std::endl;
    return false;
  }
  if(std::strncmp(buffer, "data", 4) != 0)
  {
    std::cerr << "ERROR: file is not a valid WAVE file (doesn't have 'data' tag)" << std::endl;
    return false;
  }

  // size of data
  if(!file.read(buffer, 4))
  {
    std::cerr << "ERROR: could not read data size" << std::endl;
    return false;
  }
  size = convert_to_int(buffer, 4);

  /* cannot be at the end of file */
  if(file.eof())
  {
    std::cerr << "ERROR: reached EOF on the file" << std::endl;
    return false;
  }
  if(file.fail())
  {
    std::cerr << "ERROR: fail state set on the file" << std::endl;
    return false;
  }

  return true;
}

char* load_wav(const std::string& filename,
               std::uint8_t& channels,
               std::int32_t& sampleRate,
               std::uint8_t& bitsPerSample,
               ALsizei& size)
{
  std::ifstream in(filename, std::ios::binary);
  if(!in.is_open())
  {
    std::cerr << "ERROR: Could not open \"" << filename << "\"" << std::endl;
    return nullptr;
  }
  if(!load_wav_file_header(in, channels, sampleRate, bitsPerSample, size))
  {
    std::cerr << "ERROR: Could not load wav header of \"" << filename << "\"" << std::endl;
    return nullptr;
  }

  char* data = new char[size];

  in.read(data, size);

  return data;
}

int main()
{
  auto openALDevice = alcOpenDevice(nullptr);
  ALCenum error;

  if(!openALDevice) {
    std::cerr << "Failed to open device\n";
    return 0;
  }

  auto openALContext = alcCreateContext(openALDevice, nullptr);
  error = alcGetError(openALDevice);

  if(error || !openALContext)
  {
    std::cerr << "ERROR: Could not create audio context" << std::endl;
    return 0;
  }

  ALCboolean contextMadeCurrent = alcMakeContextCurrent(openALContext);
  error = alcGetError(openALDevice);

  if(error || contextMadeCurrent != ALC_TRUE)
  {
    std::cerr << "ERROR: Could not make audio context current" << std::endl;
    return 0;
  }

  std::uint8_t channels;
  std::int32_t sampleRate;
  std::uint8_t bitsPerSample;
  ALsizei size;
  auto soundData = load_wav("/home/molle/Documents/projects/cppAudio/Alesis-Fusion-Acoustic-Bass-C2.wav", channels, sampleRate, bitsPerSample, size);
  if(!soundData)
  {
    std::cerr << "ERROR: Could not load wav" << std::endl;
    return 0;
  }

  ALuint buffer;
  alGenBuffers(1, &buffer);


  ALenum format;
  if(channels == 1 && bitsPerSample == 8)
    format = AL_FORMAT_MONO8;
  else if(channels == 1 && bitsPerSample == 16)
    format = AL_FORMAT_MONO16;
  else if(channels == 2 && bitsPerSample == 8)
    format = AL_FORMAT_STEREO8;
  else if(channels == 2 && bitsPerSample == 16)
    format = AL_FORMAT_STEREO16;
  else
  {
    std::cerr
        << "ERROR: unrecognised wave format: "
        << channels << " channels, "
        << bitsPerSample << " bps" << std::endl;
    return 0;
  }

  //alCall(alBufferData, buffer, format, soundData.data(), soundData.size(), sampleRate);
  alBufferData(buffer, format, soundData, size, sampleRate);
  delete[] soundData; // erase the sound in RAM

  error = alcGetError(openALDevice);
  if(error) {
    std::cerr << error << std::endl;
    return 0;
  }

  ALuint source;
  alGenSources(1, &source);
  alSourcef(source, AL_PITCH, 1);
  alSourcef(source, AL_GAIN, 1.0f);
  alSource3f(source, AL_POSITION, 0, 0, 0);
  alSource3f(source, AL_VELOCITY, 0, 0, 0);
  alSourcei(source, AL_LOOPING, AL_FALSE);
  alSourcei(source, AL_BUFFER, buffer);

  alSourcePlay(source);

  ALint state = AL_PLAYING;

  while(state == AL_PLAYING)
  {
    alGetSourcei(source, AL_SOURCE_STATE, &state);
  }

  alDeleteSources(1, &source);
  alDeleteBuffers(1, &buffer);

  contextMadeCurrent = alcMakeContextCurrent(openALContext);
  alcDestroyContext(openALContext);

  std::cout << "Successfully found device and set up\n";
  if(!alcCloseDevice(openALDevice))
    std::cerr << "Field to close device\n";

  return 0;
}
pragma solidity ^0.5.0;

contract DStorage {
  string public name = 'DStorage';
  uint public fileCount = 0;

  event FileUploaded(
    uint fileId,
    string fileHash,
    uint fileSize,
    string fileType,
    string fileName, 
    string fileDescription,
    uint uploadTime,
    address payable uploader
  );


  struct File {
    uint fileId;
    string fileHash;
    uint fileSize;
    string fileType;
    string fileName;
    string fileDescription;
    uint uploadTime;
    address payable uploader;
  }
  mapping(uint => File) public files;

  constructor() public {
  }

  function uploadFile(string memory _fileHash, uint _fileSize, string memory _fileType, string memory _fileName, string memory _fileDescription) public {
    // Make sure the file hash exists
    require(bytes(_fileHash).length > 0, "file hash is empty");
    // Make sure file type exists
    require(bytes(_fileType).length > 0, "file type is empty");
    // Make sure file description exists
    require(bytes(_fileDescription).length > 0, "file description is empty");
    // Make sure file fileName exists
    require(bytes(_fileName).length > 0, "file name is empty");
    // Make sure uploader address exists
    require(msg.sender!=address(0), "uploader address doesn't exists");
    // Make sure file size is more than 0
    require(_fileSize>0, "file size is zero");

    // Increment file id
    fileCount ++;

    // Add File to the contract
    files[fileCount] = File(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender);
    // Trigger an event
    emit FileUploaded(fileCount, _fileHash, _fileSize, _fileType, _fileName, _fileDescription, now, msg.sender);
  }

}
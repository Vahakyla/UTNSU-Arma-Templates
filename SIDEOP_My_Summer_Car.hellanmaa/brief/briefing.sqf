//This adds briefing files
player createDiarySubject ["Diary", "Diary"];

//This adds the different briefings
//these need to be added so that the one you want on the bottom is first

player createDiaryRecord ["Diary", ["Setting up an alternate TFAR channel", LoadFile "brief\text\Alt channel.txt"]];
player createDiaryRecord ["Diary", ["Quartermaster", LoadFile "brief\text\QM.txt"]];
player createDiaryRecord ["Diary", ["Muster Zone script", LoadFile "brief\text\Muster.txt"]];
player createDiaryRecord ["Diary", ["Recce Sighting Report", LoadFile "brief\text\Recce.txt"]];
player createDiaryRecord ["Diary", ["Command & Signals", LoadFile "brief\text\Signal.txt"]];

//More info: https://community.bistudio.com/wiki/createDiaryRecord







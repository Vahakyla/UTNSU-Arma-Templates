//This adds briefing files
player createDiarySubject ["Diary", "Diary"];

//This adds the different briefings
//these need to be added so that the one you want on the bottom is first

player createDiaryRecord ["Diary", ["Setting up an alternate TFAR channel", LoadFile "brief\text\Alt channel.txt"]];
player createDiaryRecord ["Diary", ["Quartermaster", LoadFile "brief\text\QM.txt"]];
player createDiaryRecord ["Diary", ["Muster Zone script", LoadFile "brief\text\Muster.txt"]];
player createDiaryRecord ["Diary", ["Recce Sighting Report", LoadFile "brief\text\Recce.txt"]];
player createDiaryRecord ["Diary", ["Summary & Questions", LoadFile "brief\text\Summary.txt"]];
player createDiaryRecord ["Diary", ["Map trace", LoadFile "brief\text\Map Trace.txt"]];
player createDiaryRecord ["Diary", ["Command & Signals", LoadFile "brief\text\Signal.txt"]];
player createDiaryRecord ["Diary", ["Service Support", LoadFile "brief\text\Service Support.txt"]];
player createDiaryRecord ["Diary", ["Execution", LoadFile "brief\text\Execution.txt"]];
player createDiaryRecord ["Diary", ["Situation", LoadFile "brief\text\Situation.txt"]];

//More info: https://community.bistudio.com/wiki/createDiaryRecord







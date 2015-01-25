
_nucleotide_rc = {};
_nucleotide_rc["A"] = "T";
_nucleotide_rc["C"] = "G";
_nucleotide_rc["G"] = "C";
_nucleotide_rc["T"] = "A";
_nucleotide_rc["M"] = "K";
_nucleotide_rc["R"] = "Y";
_nucleotide_rc["W"] = "W";
_nucleotide_rc["S"] = "S";
_nucleotide_rc["Y"] = "R";
_nucleotide_rc["K"] = "M";
_nucleotide_rc["B"] = "V";  /* not A */
_nucleotide_rc["D"] = "H";  /* not C */
_nucleotide_rc["H"] = "D";  /* not G */
_nucleotide_rc["V"] = "B";  /* not T */
_nucleotide_rc["N"] = "N";

alignOptions = {};
if (alignmentType == 0 || alignmentType == 2)
{
	alignOptions ["SEQ_ALIGN_CHARACTER_MAP"]="ARNDCQEGHILKMFPSTWYV";
	
	
	if (useBlosum62) {
		scoreMatrix = 
		{
		{                 6,                -3,                -4,                -4,                -2,                -2,                -2,                -1,                -3,                -3,                -3,                -2,                -2,                -4,                -2,                 0,                -1,                -5,                -3,                -1,                -4,                -2,                -2,                -7}
		{                -3,                 8,                -2,                -4,                -6,                 0,                -2,                -5,                -2,                -6,                -4,                 1,                -3,                -5,                -4,                -2,                -3,                -5,                -3,                -5,                -3,                -1,                -2,                -7}
		{                -4,                -2,                 8,                 0,                -5,                -1,                -2,                -2,                 0,                -6,                -6,                -1,                -4,                -5,                -4,                 0,                -1,                -7,                -4,                -5,                 6,                -2,                -2,                -7}
		{                -4,                -4,                 0,                 8,                -6,                -2,                 0,                -3,                -3,                -5,                -6,                -2,                -6,                -6,                -3,                -1,                -3,                -7,                -6,                -6,                 6,                 0,                -3,                -7}
		{                -2,                -6,                -5,                -6,                10,                -5,                -7,                -5,                -5,                -3,                -3,                -6,                -3,                -5,                -5,                -2,                -2,                -4,                -4,                -2,                -5,                -6,                -4,                -7}
		{                -2,                 0,                -1,                -2,                -5,                 8,                 1,                -4,                 0,                -6,                -4,                 0,                -1,                -6,                -3,                -1,                -2,                -3,                -3,                -4,                -1,                 6,                -2,                -7}
		{                -2,                -2,                -2,                 0,                -7,                 1,                 7,                -4,                -1,                -6,                -5,                 0,                -4,                -6,                -3,                -1,                -2,                -5,                -4,                -4,                 0,                 6,                -2,                -7}
		{                -1,                -5,                -2,                -3,                -5,                -4,                -4,                 7,                -4,                -7,                -6,                -3,                -5,                -5,                -4,                -2,                -4,                -4,                -5,                -6,                -2,                -4,                -4,                -7}
		{                -3,                -2,                 0,                -3,                -5,                 0,                -1,                -4,                10,                -6,                -5,                -2,                -3,                -3,                -4,                -2,                -4,                -5,                 0,                -6,                -1,                -1,                -3,                -7}
		{                -3,                -6,                -6,                -5,                -3,                -6,                -6,                -7,                -6,                 6,                 0,                -5,                 0,                -1,                -5,                -5,                -2,                -5,                -3,                 2,                -5,                -6,                -2,                -7}
		{                -3,                -4,                -6,                -6,                -3,                -4,                -5,                -6,                -5,                 0,                 6,                -5,                 1,                -1,                -5,                -5,                -3,                -3,                -3,                 0,                -6,                -5,                -2,                -7}
		{                -2,                 1,                -1,                -2,                -6,                 0,                 0,                -3,                -2,                -5,                -5,                 7,                -3,                -6,                -2,                -1,                -2,                -5,                -3,                -4,                -2,                 0,                -2,                -7}
		{                -2,                -3,                -4,                -6,                -3,                -1,                -4,                -5,                -3,                 0,                 1,                -3,                 9,                -1,                -5,                -3,                -2,                -3,                -3,                 0,                -5,                -2,                -1,                -7}
		{                -4,                -5,                -5,                -6,                -5,                -6,                -6,                -5,                -3,                -1,                -1,                -6,                -1,                 8,                -6,                -4,                -4,                 0,                 1,                -3,                -6,                -6,                -3,                -7}
		{                -2,                -4,                -4,                -3,                -5,                -3,                -3,                -4,                -4,                -5,                -5,                -2,                -5,                -6,                 9,                -2,                -3,                -6,                -5,                -4,                -4,                -3,                -4,                -7}
		{                 0,                -2,                 0,                -1,                -2,                -1,                -1,                -2,                -2,                -5,                -5,                -1,                -3,                -4,                -2,                 7,                 0,                -5,                -3,                -4,                -1,                -1,                -2,                -7}
		{                -1,                -3,                -1,                -3,                -2,                -2,                -2,                -4,                -4,                -2,                -3,                -2,                -2,                -4,                -3,                 0,                 7,                -4,                -3,                -1,                -2,                -2,                -2,                -7}
		{                -5,                -5,                -7,                -7,                -4,                -3,                -5,                -4,                -5,                -5,                -3,                -5,                -3,                 0,                -6,                -5,                -4,                12,                 0,                -6,                -7,                -4,                -4,                -7}
		{                -3,                -3,                -4,                -6,                -4,                -3,                -4,                -5,                 0,                -3,                -3,                -3,                -3,                 1,                -5,                -3,                -3,                 0,                 9,                -3,                -5,                -3,                -2,                -7}
		{                -1,                -5,                -5,                -6,                -2,                -4,                -4,                -6,                -6,                 2,                 0,                -4,                 0,                -3,                -4,                -4,                -1,                -6,                -3,                 6,                -6,                -4,                -2,                -7}
		{                -4,                -3,                 6,                 6,                -5,                -1,                 0,                -2,                -1,                -5,                -6,                -2,                -5,                -6,                -4,                -1,                -2,                -7,                -5,                -6,                 7,                -1,                -3,                -7}
		{                -2,                -1,                -2,                 0,                -6,                 6,                 6,                -4,                -1,                -6,                -5,                 0,                -2,                -6,                -3,                -1,                -2,                -4,                -3,                -4,                -1,                 7,                -2,                -7}
		{                -2,                -2,                -2,                -3,                -4,                -2,                -2,                -4,                -3,                -2,                -2,                -2,                -1,                -3,                -4,                -2,                -2,                -4,                -2,                -2,                -3,                -2,                -2,                -7}
		{                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                -7,                 1}
		};
		
		_protBaseFrequencies = {{         0.074}
                                {         0.025}
                                {         0.054}
                                {         0.054}
                                {         0.047}
                                {         0.074}
                                {         0.026}
                                {         0.068}
                                {         0.058}
                                {         0.099}
                                {         0.025}
                                {         0.045}
                                {         0.039}
                                {         0.034}
                                {         0.052}
                                {         0.057}
                                {         0.051}
                                {         0.073}
                                {         0.013}
                                {         0.032}
                                };
	}
	else
	{
		scoreMatrix = 
		{
		{                 7,                -7,                -7,                -4,               -10,               -11,                -4,                -3,               -10,                -6,                -9,                -9,                -7,               -13,                -3,                -2,                 1,               -16,               -15,                 0,                -5,                -5,                -3,               -17}
		{                -7,                 7,                -5,               -11,                -8,                -2,                -7,                -2,                 0,                -6,                -6,                 2,                -3,               -12,                -4,                -2,                -2,                -5,                -9,               -10,                -7,                -3,                -3,               -17}
		{                -7,                -5,                 8,                 2,                -9,                -6,                -6,                -7,                 0,                -6,               -12,                 0,               -10,               -12,                -9,                 1,                 0,               -17,                -3,               -10,                 6,                -6,                -3,               -17}
		{                -4,               -11,                 2,                 8,               -14,               -10,                 0,                -2,                -3,               -11,               -15,                -7,               -13,               -15,               -13,                -5,                -6,               -16,                -6,                -5,                 7,                 0,                -3,               -17}
		{               -10,                -8,                -9,               -14,                11,               -16,               -15,                -5,                -7,               -11,                -9,               -13,               -14,                 0,               -12,                -1,                -6,                -2,                 0,                -8,               -10,               -16,                -5,               -17}
		{               -11,                -2,                -6,               -10,               -16,                 8,                -2,               -10,                 0,               -12,                -4,                 0,                -8,               -12,                -1,                -9,                -8,               -14,                -9,               -13,                -7,                 6,                -4,               -17}
		{                -4,                -7,                -6,                 0,               -15,                -2,                 7,                -1,                -9,               -12,               -15,                -1,               -10,               -17,               -13,               -11,                -8,               -15,               -12,                -5,                 0,                 6,                -4,               -17}
		{                -3,                -2,                -7,                -2,                -5,               -10,                -1,                 7,               -10,               -11,               -14,                -6,               -12,                -9,               -11,                -1,                -7,                -5,               -14,                -5,                -4,                -3,                -4,               -17}
		{               -10,                 0,                 0,                -3,                -7,                 0,                -9,               -10,                10,               -10,                -4,                -5,               -10,                -6,                -3,                -6,                -6,               -11,                 2,               -14,                -1,                -2,                -3,               -17}
		{                -6,                -6,                -6,               -11,               -11,               -12,               -12,               -11,               -10,                 7,                 0,                -7,                 0,                -2,               -10,                -4,                 0,               -14,                -9,                 2,                -7,               -12,                -2,               -17}
		{                -9,                -6,               -12,               -15,                -9,                -4,               -15,               -14,                -4,                 0,                 6,               -10,                 0,                 0,                -3,                -5,                -8,                -6,                -8,                -4,               -13,                -6,                -4,               -17}
		{                -9,                 2,                 0,                -7,               -13,                 0,                -1,                -6,                -5,                -7,               -10,                 7,                -4,               -14,                -9,                -5,                -1,               -12,               -13,                -9,                -1,                -1,                -2,               -17}
		{                -7,                -3,               -10,               -13,               -14,                -8,               -10,               -12,               -10,                 0,                 0,                -4,                10,                -7,               -11,                -9,                -1,               -11,               -15,                 0,               -11,                -9,                -3,               -17}
		{               -13,               -12,               -12,               -15,                 0,               -12,               -17,                -9,                -6,                -2,                 0,               -14,                -7,                10,               -11,                -5,               -10,                -5,                 1,                -5,               -13,               -14,                -3,               -17}
		{                -3,                -4,                -9,               -13,               -12,                -1,               -13,               -11,                -3,               -10,                -3,                -9,               -11,               -11,                 8,                -1,                -3,               -13,               -11,               -12,               -10,                -3,                -5,               -17}
		{                -2,                -2,                 1,                -5,                -1,                -9,               -11,                -1,                -6,                -4,                -5,                -5,                -9,                -5,                -1,                 8,                 0,               -12,                -6,                -9,                 0,               -10,                -3,               -17}
		{                 1,                -2,                 0,                -6,                -6,                -8,                -8,                -7,                -6,                 0,                -8,                -1,                -1,               -10,                -3,                 0,                 7,               -16,               -10,                -4,                -2,                -8,                -2,               -17}
		{               -16,                -5,               -17,               -16,                -2,               -14,               -15,                -5,               -11,               -14,                -6,               -12,               -11,                -5,               -13,               -12,               -16,                10,                -4,               -16,               -16,               -14,                -8,               -17}
		{               -15,                -9,                -3,                -6,                 0,                -9,               -12,               -14,                 2,                -9,                -8,               -13,               -15,                 1,               -11,                -6,               -10,                -4,                10,               -12,                -4,               -10,                -4,               -17}
		{                 0,               -10,               -10,                -5,                -8,               -13,                -5,                -5,               -14,                 2,                -4,                -9,                 0,                -5,               -12,                -9,                -4,               -16,               -12,                 7,                -7,                -7,                -3,               -17}
		{                -5,                -7,                 6,                 7,               -10,                -7,                 0,                -4,                -1,                -7,               -13,                -1,               -11,               -13,               -10,                 0,                -2,               -16,                -4,                -7,                 7,                -2,                -4,               -17}
		{                -5,                -3,                -6,                 0,               -16,                 6,                 6,                -3,                -2,               -12,                -6,                -1,                -9,               -14,                -3,               -10,                -8,               -14,               -10,                -7,                -2,                 6,                -4,               -17}
		{                -3,                -3,                -3,                -3,                -5,                -4,                -4,                -4,                -3,                -2,                -4,                -2,                -3,                -3,                -5,                -3,                -2,                -8,                -4,                -3,                -4,                -4,                -3,               -17}
		{               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,               -17,                 1}
		};	
		_protBaseFrequencies = {
                                {0.060490222}
                                {0.020075899}
                                {0.042109048}
                                {0.071567447}
                                {0.028809447}
                                {0.072308239}
                                {0.022293943}
                                {0.069730629}
                                {0.056968211}
                                {0.098851122}
                                {0.019768318}
                                {0.044127815}
                                {0.046025282}
                                {0.053606488}
                                {0.066039665}
                                {0.050604330}
                                {0.053636813}
                                {0.061625237}
                                {0.033011601}
                                {0.028350243}
                                };
	}
	
	alignOptions ["SEQ_ALIGN_SCORE_MATRIX"] = 	scoreMatrix[{{0,0}}][{{19,19}}];
	alignOptions ["SEQ_ALIGN_GAP_OPEN"]		= 	40;
	alignOptions ["SEQ_ALIGN_GAP_OPEN2"]	= 	20;
	alignOptions ["SEQ_ALIGN_GAP_EXTEND"]	= 	10;
	alignOptions ["SEQ_ALIGN_GAP_EXTEND2"]	= 	5;
}
else
{
	if (alignmentType == 1)
	{
		alignOptions ["SEQ_ALIGN_CHARACTER_MAP"]="ACGT";
	
		scoreMatrix = {
		{5,-1,-4,-4}
		{-4,5,-4,-4}
		{-4,-4,5,-4}
		{-4,-4,-4,5}
		};
		
		
		alignOptions ["SEQ_ALIGN_SCORE_MATRIX"] = 	scoreMatrix;
		alignOptions ["SEQ_ALIGN_GAP_OPEN"]		= 	10;
		alignOptions ["SEQ_ALIGN_GAP_OPEN2"]	= 	5;
		alignOptions ["SEQ_ALIGN_GAP_EXTEND"]	= 	1;
		alignOptions ["SEQ_ALIGN_GAP_EXTEND2"]	= 	1;
	}
}

alignOptions ["SEQ_ALIGN_AFFINE"]		=   1;
alignOptions ["SEQ_ALIGN_NO_TP"]		=   1;

outputAlignment = "";

if (alignmentType == 0 || alignmentType == 2)
{
	LoadFunctionLibrary  ("chooseGeneticCode");
 
	if (alignmentType == 2) {
		protScoreMatrix = scoreMatrix;
		scoreMatrix = {64,64};
		_HY_NUC_CODON_HAVE_SCORE_MATRIX = 1;
        ExecuteAFile (HYPHY_LIB_DIRECTORY+"TemplateBatchFiles"+DIRECTORY_SEPARATOR+"SeqAlignmentCodonShared.ibf");
        protScoreMatrix = alignOptions["SEQ_ALIGN_SCORE_MATRIX"];
        alignOptions = {};
        
        
        protLetters = "ARNDCQEGHILKMFPSTWYV";
        _cdnaln_cdnScoreMatrix = pSM2cSM(protScoreMatrix, protLetters);
        
        
        alignOptions ["SEQ_ALIGN_SCORE_MATRIX"] = 	_cdnaln_cdnScoreMatrix;
        maxScore = Max (protScoreMatrix,0);
        minScore = Min (protScoreMatrix,0);
 
        	
	    alignOptions ["SEQ_ALIGN_GAP_OPEN"]		= 	1.5*Max(maxScore,-minScore);
	    alignOptions ["SEQ_ALIGN_GAP_OPEN2"]	= 	1.5*Max(maxScore,-minScore);
	    alignOptions ["SEQ_ALIGN_GAP_EXTEND"]	= 	0;
	    alignOptions ["SEQ_ALIGN_GAP_EXTEND2"]	= 	0;
	    alignOptions ["SEQ_ALIGN_FRAMESHIFT"]	= 	3*Max(maxScore,-minScore);
	    alignOptions ["SEQ_ALIGN_CODON_ALIGN"]	= 	1;
    
        /*       
        alignOptions ["SEQ_ALIGN_GAP_OPEN"]		= 	-1*minScore;
        alignOptions ["SEQ_ALIGN_GAP_OPEN2"]	= 	-1*minScore;
        alignOptions ["SEQ_ALIGN_GAP_EXTEND"]	= 	1;
        alignOptions ["SEQ_ALIGN_GAP_EXTEND2"]	= 	1;
        alignOptions ["SEQ_ALIGN_FRAMESHIFT"]	= 	Max(maxScore,-minScore);
        alignOptions ["SEQ_ALIGN_CODON_ALIGN"]	= 	1;
        */
        
        alignOptions ["SEQ_ALIGN_CHARACTER_MAP"]=  "ACGT";
        alignOptions ["SEQ_ALIGN_NO_TP"]		=   1;
        alignOptions ["SEQ_ALIGN_AFFINE"]		=   1;
       
        shift_penalty = computeExpectedPerBaseScore (.2,protScoreMatrix,_protBaseFrequencies);
        //fprintf (stdout, "\n****", shift_penalty, "******\n");
        _cdnaln_partialScoreMatrices = cSM2partialSMs(_cdnaln_cdnScoreMatrix, {{shift_penalty__*1.5,shift_penalty__,shift_penalty__,shift_penalty*1.5}});
        
        alignOptions ["SEQ_ALIGN_PARTIAL_3x1_SCORES"] = _cdnaln_partialScoreMatrices["3x1"];
        alignOptions ["SEQ_ALIGN_PARTIAL_3x2_SCORES"] = _cdnaln_partialScoreMatrices["3x2"];
        alignOptions ["SEQ_ALIGN_PARTIAL_3x4_SCORES"] = _cdnaln_partialScoreMatrices["3x4"];
        alignOptions ["SEQ_ALIGN_PARTIAL_3x5_SCORES"] = _cdnaln_partialScoreMatrices["3x5"];	
    }
	else
	{
		codonToAAMap = {};
		codeToAA 	 = "FLIMVSPTAYXHQNKDECWRG";
		
		nucChars = "ACGT";
		
		for (p1=0; p1<64; p1=p1+1)
		{
			codon = nucChars[p1$16]+nucChars[p1%16$4]+nucChars[p1%4];
			ccode = _Genetic_Code[p1];
			codonToAAMap[codon] = codeToAA[ccode];
		}	
	}
	
}	

if (_RUN_ALIGNER_AS_A_LIBRARY) {
    return 0;
}

SetDialogPrompt 			("Reference alignment:");
DataSet ref_ds 			  =  ReadDataFile (PROMPT_FOR_FILE);
referenceAlignmentPath	  = LAST_FILE_PATH;
if (verboseFlag)
{
	fprintf 				   (stdout, "Read ", ref_ds.species-1, " reference sequences.\n");
}

refTree	= DATAFILE_TREE;

fscanf (stdin,"String",sequenceName);
fscanf (stdin,"String",sequenceData);

inputAlignment = ">"+sequenceName+"\n"+sequenceData;

DataSet ds_to_align = ReadFromString (inputAlignment);

seqCount			= ds_to_align.species;

if (verboseFlag) {
	fprintf (stdout, "Read ", seqCount, " sequences.\n");
}

DataSetFilter	ref_filter		= CreateFilter (ref_ds,1);
DataSetFilter	qry_filter		= CreateFilter (ds_to_align,1);

GetInformation 	(refSeqs, ref_filter);
GetInformation 	(qrySeqs, qry_filter);

refSequence	= refSeqs[ref_ds.species-1];


for (_currentSeqID = 0; _currentSeqID < ds_to_align.species; _currentSeqID = _currentSeqID + 1)
{
	qrySequence = qrySeqs[_currentSeqID];
	GetString 	(qryName, ds_to_align, _currentSeqID);
	if (verboseFlag)
	{
		fprintf (stdout, "\nWorking on ", qryName, " ", 1+_currentSeqID, "/", ds_to_align.species , "\n");
	}
	toAlignDS	= ">REFERENCE\n" + refSequence + "\n>" + qryName + "\n"+qrySequence;
	
	DataSet		   unal = ReadFromString (toAlignDS);
	DataSetFilter  filteredData 	= CreateFilter	(unal,1);
	GetInformation (UnalignedSeqs,filteredData);
	/* preprocess sequences */
	
	for (seqCounter = 0; seqCounter < Columns(UnalignedSeqs); seqCounter = seqCounter+1)
	{
		aSeq = UnalignedSeqs[seqCounter];
		UnalignedSeqs[seqCounter] = aSeq^{{"[^a-zA-Z]",""}};
		
		if (_allowNsInSequences == 0) {
		    UnalignedSeqs[seqCounter] = UnalignedSeqs[seqCounter]^{{"^N+",""}};
		    UnalignedSeqs[seqCounter] = UnalignedSeqs[seqCounter]^{{"N+$",""}};
		}
	}
	
	/* determine reading frames	*/
	ProteinSequences = {};
	AllTranslations  = {};
	ReadingFrames	 = {};
	StopCodons		 = {};
	StopPositions    = {};
	
	if (verboseFlag)
	{
		fprintf (stdout, "\nDetecting reading frames for each sequence...\n");
	}
	
	if (alignmentType == 0 || alignmentType == 2)
	{
		frameCounter  = {6,1};
		stillHasStops = {};
		
		if (tryReverseComplement)
		{
			revComp = nucleotideReverseComplement (aSeq);
		}
				
		for (seqCounter = 0; seqCounter < Columns(UnalignedSeqs); seqCounter = seqCounter+1)
		{
			aSeq = UnalignedSeqs[seqCounter];
			
			seqLen = Abs(aSeq)-2;
			
			minStops = 1e20;
			tString = "";
			rFrame = 0;
			
			stopPosn = {6,2};
			allTran  = {6,1};
			for (offset = 0; offset < 6; offset = offset+1)
			{
				if ((tryReverseComplement == 0 || seqCounter == 0) && offset == 3)
				{
					break;
				}
				
				translString = "";
				translString * (seqLen/3+1);
			
				if (alignmentType == 0)
				{
					if (offset < 3)
					{
						for (seqPos = offset; seqPos < seqLen; seqPos = seqPos+3)
						{
							codon = aSeq[seqPos][seqPos+2];
							prot = codonToAAMap[codon];
							if (Abs(prot))
							{
								translString * prot;
							}
							else
							{
								translString * "?";
							}
						} 
					}
					else
					{
						for (seqPos = offset-3; seqPos < seqLen; seqPos = seqPos+3)
						{
							codon = revComp[seqPos][seqPos+2];
							prot = codonToAAMap[codon];
							if (Abs(prot))
							{
								translString * prot;
							}
							else
							{
								translString * "?";
							}
						} 				
					}
					translString * 0;
					translString = translString^{{"X$","?"}};
					stopPos = translString||"X";
					if (stopPos[0]>=0)
					{
						stopCount = Rows(stopPos)$2;
						stopPosn[offset][0] = stopPos[0];
						stopPosn[offset][1] = stopPos[stopCount*2-1];
					}
					else
					{
						stopCount = 0;
					}
					
					if (stopCount<minStops)
					{
						minStops = stopCount;
						rFrame = offset;
						tString = translString;
					}
				}
				else
				{
					if (alignmentType == 2)
					{
						if (offset == 0){
							translString = aSeq;
						}
						else {
							translString = revComp;
						}
					}
					else
					{
						if (offset == 0) {
							translString = aSeq[offset][seqLen$3*3-1];
						}
						else
						{
							if (offset == 3) {
								translString = revComp[offset-3][seqLen$3*3-1];	
							}
					
						}
					}			
				}
				
				
				allTran[offset] = translString;
			}
			
			ReadingFrames[seqCounter] 		= rFrame;
			ProteinSequences[seqCounter]	= tString;
			frameCounter[rFrame] 			= frameCounter[rFrame]+1;
			StopPositions[seqCounter]		= stopPosn;
			AllTranslations [seqCounter]	= allTran;
			
			if (alignmentType == 0 && minStops>0)
			{
				stillHasStops[Abs(stillHasStops)] = seqCounter;
				if (seqCounter == 0)
				{
					fprintf (stdout, "ERROR:Reference sequence must not contain frameshifts\n");
					continue;
				}
			}
		}
		if (alignmentType == 0){
			s1 = ProteinSequences[0];
		}
		else {
			s1 = UnalignedSeqs[0];
		}
		if (verboseFlag) {
			fprintf (stdout, "\nFound:\n\t", frameCounter[0], " sequences in reading frame 1\n\t",frameCounter[1], " sequences in reading frame 2\n\t",frameCounter[2], " sequences in reading frame 3\n\nThere were ", Abs(stillHasStops), " sequences with apparent frameshift/sequencing errors\n");
		}
	}
	else {
		ProteinSequences = UnalignedSeqs;
		s1 = ProteinSequences[0];
	}
	
	skipSeqs = {};
	
	if (frameSelectByAlignment && alignmentType == 0 || alignmentType == 2)
	{
		upto 	  = 3 + (tryReverseComplement*3);
		
		refProt = (AllTranslations[0])[0];
		
		if (alignmentType == 0) {
			bestScore = Max(0,computeExpectedPerBaseScore (.4,alignOptions ["SEQ_ALIGN_SCORE_MATRIX"],_protBaseFrequencies))*Abs((AllTranslations[1])[0]);
		}
		else {
			bestScore = Max(0,computeExpectedPerBaseScore (.4,protScoreMatrix,_protBaseFrequencies))*Abs((AllTranslations[1])[0])$3;
		}
		
		
		bestFrame = -1;	
		
		for (k = 0; k < upto; k+=1)
		{
			inStr = {{refProt,(AllTranslations[1])[k]}};
			
			if (alignmentType == 0 || k % 3 == 0)
			{
				AlignSequences(aligned, inStr, alignOptions);
				
				aligned = aligned[0];
				if (aligned[0] >= bestScore)
				{
					bestScore   = aligned[0];
					bestFrame   = k; 
					if (alignmentType == 2)
					{
						// trim everything not covered by the reference
						/*gapCount = aligned[1]$"^\\-+";
						if (gapCount[1] >= 0)
						{
							aligned[1] = (aligned[1])[gapCount[1]+1][-1];
							aligned[2] = (aligned[2])[gapCount[1]+1][-1];
						}
						gapCount = aligned[2]$"^\\-+";
						if (gapCount[1] >= 0)
						{
							fs = (gapCount[1] + 1) % 3;
							if (fs != 3)
							{
								bestFrame = k + fs;
								cutFrom   = gapCount[1] + 4 - fs;
								aligned[2] = (aligned[2])[cutFrom][-1];
								mx = {cutFrom,1};
								for (kk = 0; kk < cutFrom; kk+=1)
								{
									mx [kk] = "-";
								}
								
								aligned[2] = Join("",mx) + aligned[2];
							}
						}*/
						bestAlignment = aligned;
					}
				}	
			}
		
		}
		
		if (bestFrame < 0) {
			fprintf (stdout, "Poor alignment scores : homology too low");
			return 1;
		}
		
		if (bestFrame < 3) {
			UnalignedSeqs[1] = 	(UnalignedSeqs[1])[bestFrame][Abs(UnalignedSeqs[1])-1];
		}	
		else {
			UnalignedSeqs[1] = revComp[bestFrame-3][Abs(revComp)-1];
		}
		
		ReadingFrames    [1] = 0;
		if (alignmentType == 2) {
			aligned = bestAlignment;
			DeleteObject (	ProteinSequences);
		}
		else {
			ProteinSequences [1] = (AllTranslations[1])[bestFrame];
		}	
	}
	else
	{
		for (k=0; k<Abs(stillHasStops); k=k+1) {
			seqCounter = stillHasStops[k];
			GetString (seqName, unal, seqCounter);
			if (verboseFlag)
			{
				fprintf (stdout,"Sequence ", seqCounter+1, " (", seqName, ") seems to have");
			}
			stopPosn = StopPositions[seqCounter];
			
			fStart = -1;
			fEnd   = -1;
			fMin   = 1e10;
			frame1 = 0;
			frame2 = 0;
			
			checkFramePosition (stopPosn[0][1],stopPosn[1][0],0,1);
			checkFramePosition (stopPosn[1][1],stopPosn[0][0],1,0);
			checkFramePosition (stopPosn[0][1],stopPosn[2][0],0,2);
			checkFramePosition (stopPosn[2][1],stopPosn[0][0],2,0);
			checkFramePosition (stopPosn[2][1],stopPosn[1][0],2,1);
			checkFramePosition (stopPosn[1][1],stopPosn[2][0],1,2);
			
			if (fStart>=0)
			{
				allTran = AllTranslations[seqCounter];
				useq    				   = UnalignedSeqs[seqCounter];
				if (verboseFlag)
				{
					fprintf (stdout, " a shift from frame ", frame2+1, " to frame ", frame1+1, " between a.a. positions ", fStart, " and ", fEnd, ".");
				}
				fStart2 = Max(fStart-1,0);
				fEnd2   = Min(fEnd+1,Min(Abs(allTran[frame1]),Abs(allTran[frame2]))-1);
				tempString = allTran[frame2];
				if (verboseFlag)
				{
					fprintf (stdout, "\n\tRegion ", fStart2, "-", fEnd2, " in frame  ", frame2+1, ":\n\t", tempString[fStart2][fEnd2]);
					fprintf (stdout, "\n\t", useq[3*fStart2+frame2][3*fEnd2+frame2-1]);
				}
				tempString = allTran[frame1];
				if (verboseFlag)
				{
					fprintf (stdout, "\n\tRegion ", fStart2, "-", fEnd2, " in frame  ", frame1+1, ":\n\t", tempString[fStart2][fEnd2]);
					fprintf (stdout, "\n\t", useq[3*fStart2+frame1][3*fEnd2+frame1-1]);
					fprintf (stdout, "\n\t\tAttempting to resolve by alignment to reference. ");
				}
				f1s = allTran[frame1];
				f2s = allTran[frame2];
				f1l = Abs(f1s);
				
				bestScore  = -1e10;
				bestSplice = -1;
				
				for (k2=fStart; k2<fEnd; k2=k2+1)
				{
					s2 = f2s[0][k2]+f1s[k2+1][Abs(f1s)];
					inStr = {{s1,s2}};
					AlignSequences(aligned, inStr, alignOptions);
					aligned = aligned[0];
					aligned = aligned[0];
					if (aligned > bestScore)
					{
						bestScore = aligned;
						bestSplice = k2;
						bestString = s2;
					}
				}
				if (verboseFlag)
				{
					fprintf (stdout, "Best splice site appears to be at a.a. position ", bestSplice, "\n");
				}
				/* update best spliced string */
				
				ProteinSequences[seqCounter] = bestString;
				ReadingFrames[seqCounter]    = 0;
				
				UnalignedSeqs[seqCounter]  = useq[frame2][frame2+3*bestSplice+2] + useq[frame1+3*bestSplice+3][Abs(useq)-1] + "---";
			}
			else
			{
				if (!verboseFlag)
				{
					fprintf (stdout,"ERROR: Sequence ", seqCounter+1, " (", seqName, ") seems to have");
				}
				fprintf (stdout, " multiple frameshifts\n");
				return 1;	
				skipSeqs[seqCounter] = 1;
			}	
		}
	}
	
	if (Abs(skipSeqs)) {
		continue;
	}

	startingPosition = {Columns(UnalignedSeqs),2};
	seqCounter = 1;	
	
	if (alignmentType != 2) {
		refLength = Abs(ProteinSequences[0]);
		
		if (verboseFlag) {
			fprintf (stdout,"\nPerforming pairwise alignment with reference sequences\n");
		}
		
		s2 			 = ProteinSequences[seqCounter];
		inStr 		 = {{s1,s2}};
	
		AlignSequences(aligned, inStr, alignOptions);
		aligned = aligned[0];
	}
	else  {
		aligned = bestAlignment;
		refLength = Abs (UnalignedSeqs[0]);
	}
	
	SeqAlignments 	 = {};
	SeqAlignments[seqCounter] = aligned;
	aligned = aligned[1];
	refInsertions	 = {refLength,1};

    if (alignmentType == 2) {
        aligned1 = (SeqAlignments[seqCounter])[1];
        aligned2 = (SeqAlignments[seqCounter])[2];
        //fprintf (stdout, "\n\n", aligned1, "\n\n", aligned2, "\n\n");
        cleaned_up = correctReadUsingCodonAlignedData (aligned1, aligned2);
        gappedSeqN  = cleaned_up ["QRY"];
        fullRefSeq  = cleaned_up ["REF"];
        ref_shift    = cleaned_up ["OFFSET"];
        //fprintf (stdout, "\n\n", fullRefSeq, "\n\n", gappedSeqN, "\n\n");
        
        if (ref_shift) {
            aligned1    = aligned1[0][ref_shift-1] + fullRefSeq;
            aligned2    = aligned2[0][ref_shift-1] + gappedSeqN;
            fullRefSeq = aligned1;
            gappedSeqN = aligned2;
       } else {
            aligned1    = fullRefSeq;
            aligned2    = gappedSeqN;
        }
        
        //fprintf (stdout, "\n\n", aligned1, "\n\n", aligned2, "\n\n", ref_shift, "\n");
          
    } else {
        myStartingPosition = aligned$"[^-]";
        myEndingPosition  = Abs (aligned)-1;
        while (aligned[myEndingPosition]=="-") {
            myEndingPosition = myEndingPosition - 1;
        }
        myStartingPosition = myStartingPosition[0];
        startingPosition[seqCounter][0] = myStartingPosition;
        startingPosition[seqCounter][1] = myEndingPosition;
        aligned = aligned[myStartingPosition][myEndingPosition];
        refInsert = aligned||"-+";
        
        if (refInsert[0]>0) {
            insCount = Rows (refInsert)/2;
            offset = 0;
            for (insN = 0; insN < insCount; insN = insN+1)
            {
                insPos 		= refInsert[insN*2];
                insLength	= refInsert[insN*2+1]-insPos+1;
                insPos 		= insPos-offset;
                if (refInsertions[insPos]<insLength)
                {
                    refInsertions[insPos]=insLength;
                }
                offset += insLength;
            }
        }
        
        fullRefSeq = "";
        fullRefSeq * refLength;
        fullRefSeq * (s1[0]);
    
        if (alignmentType == 0) {
            s1N = UnalignedSeqs[0];
        
            fullRefSeqN = "";
            fullRefSeqN * (3*refLength);
            fullRefSeqN * (s1N[0][2]);
        
            frameShift = ReadingFrames[0];
        }
    
        for (seqCounter=1;seqCounter<refLength;seqCounter=seqCounter+1) {
            gapCount = refInsertions[seqCounter];
            for (k=0; k<gapCount;k=k+1)
            {
                fullRefSeq*("-");
                if (alignmentType == 0) {
                    fullRefSeqN*("---");
                }
            }	
            fullRefSeq  * (s1[seqCounter]);
            if (alignmentType == 0) {	
                fullRefSeqN * (s1N[frameShift+seqCounter*3][frameShift+seqCounter*3+2]);
            }
        }
    
        fullRefSeq  * 0;
        if (alignmentType == 0) {
            fullRefSeqN * 0;
        }
        seqCounter = 1;
    
        GetString (seqName,unal,seqCounter);
        aligned = SeqAlignments[seqCounter];
        
        aligned1 = aligned[1];
        aligned2 = aligned[2];
        
        s2 = startingPosition[seqCounter][0];
        e2 = startingPosition[seqCounter][1];
        
        gappedSeq = "";
        gappedSeq * Abs(aligned2);
    
        k=0;
        
        while (k<refLength)
        {
            while ((fullRefSeq[k]&&1)!=(aligned1[s2]&&1))
            {
                gappedSeq*("-");
                k += 1;
            }
            gappedSeq*(aligned2[s2]);
            s2 += 1;
            k += 1;
            
        }
    
        gappedSeq * 0;
        
        if (alignmentType == 0)
        {	
            gappedSeqN = "";
            gappedSeqN * (3*Abs(aligned2));
            
            frameShift = ReadingFrames[seqCounter];
        
            s1N 	= UnalignedSeqs[seqCounter];
            s2N		= ProteinSequences[seqCounter];
            s2 		= startingPosition[seqCounter][0];
            k 		= 0;
            e2		= Abs(gappedSeq);
            k = 0;
            while  (k<e2)
            {
                while ((s2N[s2]!=gappedSeq[k])&&(k<e2))
                {
                    gappedSeqN * ("---");
                    k=k+1;
                }
                if (k<e2)
                {
                    gappedSeqN * s1N[frameShift+s2*3][frameShift+s2*3+2];
                    s2 = s2+1;
                    k=k+1;
                }
            }
            gappedSeqN * 0;
            
        }
        else
        {
            gappedSeqN = gappedSeq;
        }
	}
	
	if (Abs (_annotateSequenceByAlignment)) {
		_extraResult = Eval (_annotateSequenceByAlignment + "(aligned1,aligned2)");
	}
	else {
		_extraResult = 0;
	}
	
	regExpS = gappedSeqN $ "^\\-+";
	if (regExpS[0]>=0 && KEEP_ALL_GAPS_IN == 0) {
		if (alignmentType) {
			startFrom 		= (regExpS		[1]+1);		
		} else {
			startFrom 		= (regExpS		[1]+1)$3;
		}
	} else {
		startFrom = 0;
	}

	regExpE	= gappedSeqN $ "\\-+$";

	if (alignmentType) {
		if (regExpE[0]>=0 && KEEP_ALL_GAPS_IN == 0) {
			endAt		= regExpE[0];
		} else {
			endAt		= Abs (gappedSeqN);
		}	
	} else {
		if (regExpE[0]>=0 && KEEP_ALL_GAPS_IN == 0) {
			endAt		= regExpE[0]$3;
		} else {
			endAt		= Abs (gappedSeqN)$3;
		}
	}

	outSeqs = {};
	for (k=0; k< ref_ds.species; k +=1) {
		outSeqs[k] = "";
		outSeqs[k] * 128;		
	}
	
	shift = 0;
	if (alignmentType == 0) {
		gapStringInsert = "---";
	}
	else {
		gapStringInsert = "-";	
	}
	
	//fprintf (stdout, "\n\n", fullRefSeq, "\n", gappedSeqN, "\n\n", KEEP_ALL_GAPS_IN, "\n\n");
	
	gappedSeqN_Stripped = ""; gappedSeqN_Stripped * 128;
	
	for (s=startFrom; s<endAt; s+=1) {
	    //fprintf (stdout, fullRefSeq[s], gappedSeqN[s], "\n");
		if (fullRefSeq[s] == "-") {
			shift += 1;
			/*for (k=0; k< ref_ds.species; k+=1) {
				outSeqs[k] * gapStringInsert;		
			}*/
		}
		else {
		    gappedSeqN_Stripped * gappedSeqN[s];
			/* only insert reference characters if 
			   the query DOES NOT have indels in 
			   that position */
			 
			if (alignmentType) {
				if (gappedSeqN[s] != "-" || KEEP_ALL_GAPS_IN == 1) {
					idx = (s-shift);
					for (k=0; k< ref_ds.species; k+=1) {
						outSeqs[k] * (refSeqs[k])[idx];		
					}
				}
			}
			else
			{
				if (gappedSeqN[3*s] != "-" || KEEP_ALL_GAPS_IN == 1) {
					idx = 3*(s-shift);
					for (k=0; k< ref_ds.species; k=k+1) {
						outSeqs[k] * (refSeqs[k])[idx][idx+2];		
					}
				}
			}
		}
	}
	for (k=0; k< ref_ds.species; k+=1) {
		outSeqs[k] * 0;		
	}
    
    gappedSeqN_Stripped * 0;
	outputAlignment * 256;
	

	for (k=0; k< ref_ds.species-1; k=k+1) {
		GetString (refName, ref_ds,k);
		outputAlignment *( ">"+ refName+ "\n"+ outSeqs[k]+ "\n");
	}	
	
	if (KEEP_ALL_GAPS_IN == 1)
	{
		alignedQuerySeq = gappedSeqN_Stripped;
		
		if (alignmentType == 0) {
			outputAlignment * (">" + qryName + "\n" + alignedQuerySeq[3*startFrom][3*endAt-1] + "\n" + refTree + "\n");
		} else {
			outputAlignment * (">" + qryName + "\n" + alignedQuerySeq[startFrom][endAt-1] + "\n" + refTree + "\n");	
		}
	}
	else
	{		
		alignedQuerySeq = gappedSeqN_Stripped ^ {{"\\-"}{""}};
		outputAlignment * (">" + qryName + "\n" + alignedQuerySeq + "\n" + refTree + "\n");	
	}
	
	outputAlignment * 0;
	
	//fprintf (stdout, outputAlignment, "\n");

	/* if ((outSeqs[ref_ds.species-1]||"[actg]")[0]>=0 || (alignedQuerySeq||"[actg]")[0]>=0) {
		fprintf (stdout, outSeqs[ref_ds.species-1], "\n", alignedQuerySeq, "\n");
	} */


}


function checkFramePosition (pos1, pos2, fr1, fr2)
{
	fSpan  = pos2-pos1;
	
	if (fSpan>1) /* first followed by second*/
	{
		if (fSpan < fMin)
		{
			fMin = fSpan;
			frame1 = fr1;
			frame2 = fr2;
			fStart = pos1+1;
			fEnd   = pos2;
		}
	}	
	return 0;
}

/*---------------------------------------------
reverse complement a nucleotide string
---------------------------------------------*/


function nucleotideReverseComplement (seqIn)
{
	_seqOut = "";_seqOut*128;
	_seqL   = Abs(seqIn);
	for (_r = _seqL-1; _r >=0 ; _r = _r-1)
	{
		_seqOut *_nucleotide_rc[seqIn[_r]];
	}
	_seqOut*0;
	return _seqOut;
}

// -------------------------------------------------------------------------- //

function computeExpectedPerBaseScore( _expectedIdentity, _cdnaln_scorematrix, _cdnaln_base_freqs ) {
    meanScore = 0;

    for (_aa1 = 0; _aa1 < 20; _aa1 += 1) {
        for (_aa2 = 0; _aa2 < 20; _aa2 += 1) {
            if ( _aa1 != _aa2 ) {
                meanScore += ( 1 - _expectedIdentity ) * _cdnaln_scorematrix[_aa1][_aa2] * _cdnaln_base_freqs[_aa1] * _cdnaln_base_freqs[_aa2];
            } else {
                meanScore += _expectedIdentity * _cdnaln_scorematrix[_aa1][_aa1] * _cdnaln_base_freqs[_aa1];
            }
        }
    }

    return meanScore;
}


/*---------------------------------------------------------------------*/

function mapStrings (sourceStr,targetStr)
// source ID -> target ID (-1 means no correspondence)

{
	mapping 	  = {};
	targetIndexing = {};
	_d = Abs(targetStr);
	
	for (_i = 0; _i < _d; _i += 1)
	{
		targetIndexing [targetStr[_i]] = _i + 1;
	}
	_d = Abs (targetStr);
	for (_i = 0; _i < _d; _i += 1)
	{
		mapping [_i] = targetIndexing[sourceStr[_i]] - 1;
	}
	
	return mapping;
}

// -------------------------------------------------------------------------- //

function _igg_alignment_cleanup (reference, query, offset_nuc) {
    too_short = 0;
    too_long  = 0;
    span      = 0; // how many nucleotides in the reference were covered by non-gaps
    _seqL     = Abs (reference);
        
    ref_cleaned = ""; ref_cleaned * 128; 
    qry_cleaned = ""; qry_cleaned * 128;
    
    _codon_in_reference = 0;
    
	for ( _rcidx = 0; _rcidx < _seqL; _rcidx += 1 ) {
	    _del1 = reference [_rcidx] != (reference [_rcidx]&&1);
	    if (_del1) {
	        too_short += 1;
	        _codon_in_reference += 1;
	        ref_cleaned * (reference [_rcidx]&&1);
	        qry_cleaned * (query [_rcidx]&&1);
	    } else {
	        _del1 = query [_rcidx] != (query [_rcidx]&&1);
	        if (_del1) {
	            if (_seqL-_rcidx < 3 && _codon_in_reference % 3 == 0) {
	                break;
	            }
	            too_long += 1;
	        } else {
                ref_cleaned * (reference [_rcidx]&&1);
                qry_cleaned * (query [_rcidx]&&1);
                span += 1;	            
                _codon_in_reference +=1;
	        }
	    }
	}
	ref_cleaned * 0; qry_cleaned * 0;
	
	return {"REF": ref_cleaned, "QRY": qry_cleaned, "TOO_SHORT" : too_short, "TOO_LONG": too_long, "SPAN": span, "OFFSET_AA" :  offset_nuc$3 + (offset_nuc % 3 > 0),"OFFSET" :  offset_nuc, "AA" : translateToAA (qry_cleaned, (3-offset_nuc%3)%3), "AA_REF" : translateToAA (ref_cleaned, (3-offset_nuc%3)%3)};
}

/*-------------------------------------------------*/

function	computeCorrection (str)
{
	correctionFore	 = (str$"^\\-+")[1]+1;
	correctionAft	 = (str$"\\-+$")[0];
	if (correctionAft >= 0)
	{
		correctionAft = Abs(str)-correctionAft;
	}
	else
	{
		correctionAft = 0;
	}
	return {{correctionFore__,correctionAft__}};
}        

/*-------------------------------------------------*/

function makeAAMap ()
{
	codonToAAMap = {};
	codeToAA 	 = "FLIMVSPTAYXHQNKDECWRG";
	
	nucChars = "ACGT";
	
	for (p1=0; p1<64; p1=p1+1)
	{
		codon 				= nucChars[p1$16]+nucChars[p1%16$4]+nucChars[p1%4];
		ccode 				= _Genetic_Code[p1];
		codonToAAMap[codon] = codeToAA[ccode];
	}
	return codonToAAMap;
}

/*-------------------------------------------------*/

function translateToAA (aSeq, offset)
{
	seqLen	= Abs (aSeq)-2;
	translString = "";
	translString * (seqLen/3+1);
	for (seqPos = offset; seqPos < seqLen; seqPos = seqPos+3)
	{
		codon = aSeq[seqPos][seqPos+2];
		prot = codonToAAMap[codon];
		if (Abs(prot))
		{
			translString * prot;
		}
		else
		{
			translString * "?";
		}
	} 
	translString * 0;
	translString = translString^{{"X$","?"}};
	return translString;
}

/*-------------------------------------------------*/

function correctReadUsingCodonAlignedData (aligned1, aligned2) {
      
    alL = computeCorrection(aligned1);
            
    /*alL is the starting,ending nucleotide on the reference relative to the read. if reference is longer than the read, then both are 0*/
    
    offsetFrom = (aligned2$"^\\-+")[1]+1;
    offsetTo   = (aligned2$"\\-+$")[0]-1;
    
    /* the $ looks for the regular expression in bestAl[2] and returns a 2x1 array with the starting and ending 0-based positions of the regular expression. in this case multiple indels, -. returns -1 for both if the regular expression is not found. 
        i.e. 0-based index leading indels start at (bestAl[2]$"^\\-+")[0] and end at (bestAl[2]$"^\\-+")[1]; trailing indels start at (bestAl[2]$"\\-+$")[0] and end at (bestAl[2]$"\\-+$")[0];		
        
        so offSetFrom to offSetTo will return the reference sequence co-ordinates overlapping with the read.
    */
    
    
    if (offsetTo < 0) {
        offsetTo = Abs(aligned2)-1; /*if no trailing indels then to end of read*/
    }
    
    seqOffset  = offsetFrom;          /*set the offset of the read relative to the reference. ie the number of indels needed on the read to align to the reference */
    offsetFrom +=  alL[0];           /*if the read starts before the reference then shift to start of reference ie. by alL[0] */
    offsetTo    =  offsetTo	- alL[1];           /*if the read extends beyond the reference then shift to end of reference ie. by alL[1] */
    
    theSeq     = aligned2;
    theSeq	   = theSeq[alL[0]][Abs(theSeq)-alL[1]-1]; /*the nucleotide sequence of the read that overlaps with the reference sequence */
    
    
    nucSeq	   = (aligned2)[offsetFrom][offsetTo]; /*read sequence pruned to exactly overlapping region*/
    nucSeqRef  = (aligned1)[offsetFrom][offsetTo]; /*reference sequence pruned to exactly overlapping region*/
    
    LoadFunctionLibrary ("chooseGeneticCode", {"0":"Universal"});
    codonToAAMap = makeAAMap();
    
    return _igg_alignment_cleanup (nucSeqRef, nucSeq,seqOffset);
       
}
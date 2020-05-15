.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field mCur:I

.field mPdu:[B

.field mUserData:[B

.field mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field mUserDataSeptetPadding:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "pdu"    # [B

    .line 619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 620
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    .line 621
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 622
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 623
    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 9
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .line 739
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 740
    .local v0, "offset":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v2, v0, 0x1

    .local v2, "offset":I
    aget-byte v0, v1, v0

    .end local v0    # "offset":I
    and-int/lit16 v0, v0, 0xff

    .line 741
    .local v0, "userDataLength":I
    const/4 v1, 0x0

    .line 742
    .local v1, "headerSeptets":I
    const/4 v3, 0x0

    .line 744
    .local v3, "userDataHeaderLength":I
    const/4 v4, 0x0

    if-eqz p1, :cond_1

    .line 745
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v6, v2, 0x1

    .local v6, "offset":I
    aget-byte v2, v5, v2

    .end local v2    # "offset":I
    and-int/lit16 v3, v2, 0xff

    .line 747
    new-array v2, v3, [B

    .line 748
    .local v2, "udh":[B
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    invoke-static {v5, v6, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 749
    invoke-static {v2}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 750
    add-int v5, v6, v3

    .line 752
    .end local v6    # "offset":I
    .local v5, "offset":I
    add-int/lit8 v6, v3, 0x1

    mul-int/lit8 v6, v6, 0x8

    .line 753
    .local v6, "headerBits":I
    div-int/lit8 v1, v6, 0x7

    .line 754
    rem-int/lit8 v7, v6, 0x7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    move v7, v4

    :goto_0
    add-int/2addr v1, v7

    .line 755
    mul-int/lit8 v7, v1, 0x7

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .line 759
    .end local v2    # "udh":[B
    .end local v6    # "headerBits":I
    move v2, v5

    .end local v5    # "offset":I
    .local v2, "offset":I
    :cond_1
    if-eqz p2, :cond_2

    .line 765
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v5, v5

    sub-int/2addr v5, v2

    .local v5, "bufferLen":I
    goto :goto_2

    .line 771
    .end local v5    # "bufferLen":I
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    :cond_3
    move v5, v4

    :goto_1
    sub-int v5, v0, v5

    .line 772
    .restart local v5    # "bufferLen":I
    if-gez v5, :cond_4

    .line 773
    const/4 v5, 0x0

    .line 777
    :cond_4
    :goto_2
    new-array v6, v5, [B

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    .line 778
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v8, v8

    invoke-static {v6, v2, v7, v4, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 779
    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 781
    if-eqz p2, :cond_6

    .line 783
    sub-int v6, v0, v1

    .line 785
    .local v6, "count":I
    if-gez v6, :cond_5

    goto :goto_3

    :cond_5
    move v4, v6

    :goto_3
    return v4

    .line 788
    .end local v6    # "count":I
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v4, v4

    return v4
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    .line 673
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 674
    .local v0, "addressLength":I
    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    add-int/2addr v2, v1

    move v1, v2

    .line 677
    .local v1, "lengthBytes":I
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    .local v2, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    nop

    .line 684
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 686
    return-object v2

    .line 678
    .end local v2    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v2

    .line 679
    .local v2, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    .line 681
    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getByte()I
    .locals 3

    .line 659
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 4

    .line 634
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 636
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 638
    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    goto :goto_0

    .line 642
    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .line 644
    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 645
    .local v1, "tr":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "invalid SC address: "

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 646
    const/4 v1, 0x0

    .line 650
    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 652
    return-object v1
.end method

.method getSCTimestampMillis()J
    .locals 13

    .line 696
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .line 697
    .local v0, "year":I
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v1, v1, v2

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .line 698
    .local v1, "month":I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v2, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .line 699
    .local v2, "day":I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v3, v3, v4

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .line 700
    .local v3, "hour":I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v4, v4, v5

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .line 701
    .local v4, "minute":I
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v5, v5, v6

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v5

    .line 708
    .local v5, "second":I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v7, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v6, v6, v7

    .line 711
    .local v6, "tzByte":B
    and-int/lit8 v7, v6, -0x9

    int-to-byte v7, v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v7

    .line 713
    .local v7, "timezoneOffset":I
    and-int/lit8 v8, v6, 0x8

    if-nez v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    neg-int v8, v7

    :goto_0
    move v7, v8

    .line 715
    new-instance v8, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v8, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 718
    .local v8, "time":Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v0, v9, :cond_1

    add-int/lit16 v9, v0, 0x76c

    goto :goto_1

    :cond_1
    add-int/lit16 v9, v0, 0x7d0

    :goto_1
    iput v9, v8, Landroid/text/format/Time;->year:I

    .line 719
    add-int/lit8 v9, v1, -0x1

    iput v9, v8, Landroid/text/format/Time;->month:I

    .line 720
    iput v2, v8, Landroid/text/format/Time;->monthDay:I

    .line 721
    iput v3, v8, Landroid/text/format/Time;->hour:I

    .line 722
    iput v4, v8, Landroid/text/format/Time;->minute:I

    .line 723
    iput v5, v8, Landroid/text/format/Time;->second:I

    .line 726
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    mul-int/lit8 v11, v7, 0xf

    mul-int/lit8 v11, v11, 0x3c

    mul-int/lit16 v11, v11, 0x3e8

    int-to-long v11, v11

    sub-long/2addr v9, v11

    return-wide v9
.end method

.method getUserData()[B
    .locals 1

    .line 798
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 6
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .line 821
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v0

    .line 824
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 v2, p1, 0x7

    div-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 826
    return-object v0
.end method

.method getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 2
    .param p1, "byteCount"    # I

    .line 839
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 843
    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 4
    .param p1, "byteCount"    # I

    .line 878
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "KSC5601"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 879
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 880
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 881
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 884
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 885
    return-object v0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 4
    .param p1, "byteCount"    # I

    .line 857
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v3, "utf-16"

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    .local v0, "ret":Ljava/lang/String;
    goto :goto_0

    .line 858
    .end local v0    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 859
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v1, ""

    .line 860
    .local v1, "ret":Ljava/lang/String;
    const-string v2, "SmsMessage"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    move-object v0, v1

    .end local v1    # "ret":Ljava/lang/String;
    .local v0, "ret":Ljava/lang/String;
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .line 864
    return-object v0
.end method

.method moreDataPresent()Z
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.class public Lcom/google/android/mms/pdu/PduParser;
.super Ljava/lang/Object;
.source "PduParser.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google/android/mms/pdu/PduBody;

.field private mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

.field private final mParseContentDisposition:Z

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    nop

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 79
    sput-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 1
    .param p1, "pduDataStream"    # [B
    .param p2, "parseContentDisposition"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 64
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 69
    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 100
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    .line 101
    iput-boolean p2, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    .line 102
    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z
    .locals 13
    .param p0, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .line 1802
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1803
    return v0

    .line 1807
    :cond_0
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    .line 1810
    .local v1, "messageType":I
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    .line 1811
    .local v2, "mmsVersion":I
    if-nez v2, :cond_1

    .line 1813
    return v0

    .line 1817
    :cond_1
    const/16 v3, 0x84

    const/16 v4, 0x95

    const/16 v5, 0x9b

    const/16 v6, 0x97

    const/16 v7, 0x8b

    const/16 v8, 0x89

    const/16 v9, 0x85

    const/16 v10, 0x98

    const-wide/16 v11, -0x1

    packed-switch v1, :pswitch_data_0

    .line 2006
    return v0

    .line 1948
    :pswitch_0
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v3

    .line 1949
    .local v3, "roDate":J
    cmp-long v9, v11, v3

    if-nez v9, :cond_2

    .line 1950
    return v0

    .line 1954
    :cond_2
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v8

    .line 1955
    .local v8, "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v8, :cond_3

    .line 1956
    return v0

    .line 1960
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v7

    .line 1961
    .local v7, "roMessageId":[B
    if-nez v7, :cond_4

    .line 1962
    return v0

    .line 1966
    :cond_4
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v5

    .line 1967
    .local v5, "roReadStatus":I
    if-nez v5, :cond_5

    .line 1968
    return v0

    .line 1972
    :cond_5
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 1973
    .local v6, "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_15

    .line 1974
    return v0

    .line 1980
    .end local v3    # "roDate":J
    .end local v5    # "roReadStatus":I
    .end local v6    # "roTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v7    # "roMessageId":[B
    .end local v8    # "roFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 1981
    .local v3, "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v3, :cond_6

    .line 1982
    return v0

    .line 1986
    :cond_6
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1987
    .local v4, "rrMessageId":[B
    if-nez v4, :cond_7

    .line 1988
    return v0

    .line 1992
    :cond_7
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v5

    .line 1993
    .local v5, "rrReadStatus":I
    if-nez v5, :cond_8

    .line 1994
    return v0

    .line 1998
    :cond_8
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .line 1999
    .local v6, "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v6, :cond_15

    .line 2000
    return v0

    .line 1914
    .end local v3    # "rrFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "rrMessageId":[B
    .end local v5    # "rrReadStatus":I
    .end local v6    # "rrTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_2
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v8

    .line 1915
    .local v8, "diDate":J
    cmp-long v3, v11, v8

    if-nez v3, :cond_9

    .line 1916
    return v0

    .line 1920
    :cond_9
    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1921
    .local v3, "diMessageId":[B
    if-nez v3, :cond_a

    .line 1922
    return v0

    .line 1926
    :cond_a
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v4

    .line 1927
    .local v4, "diStatus":I
    if-nez v4, :cond_b

    .line 1928
    return v0

    .line 1932
    :cond_b
    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .line 1933
    .local v5, "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v5, :cond_15

    .line 1934
    return v0

    .line 1940
    .end local v3    # "diMessageId":[B
    .end local v4    # "diStatus":I
    .end local v5    # "diTo":[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v8    # "diDate":J
    :pswitch_3
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1941
    .local v3, "aiTransactionId":[B
    if-nez v3, :cond_15

    .line 1942
    return v0

    .line 1900
    .end local v3    # "aiTransactionId":[B
    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1901
    .local v3, "rcContentType":[B
    if-nez v3, :cond_c

    .line 1902
    return v0

    .line 1906
    :cond_c
    invoke-virtual {p0, v9}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1907
    .local v4, "rcDate":J
    cmp-long v6, v11, v4

    if-nez v6, :cond_15

    .line 1908
    return v0

    .line 1886
    .end local v3    # "rcContentType":[B
    .end local v4    # "rcDate":J
    :pswitch_5
    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1887
    .local v3, "nriStatus":I
    if-nez v3, :cond_d

    .line 1888
    return v0

    .line 1892
    :cond_d
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1893
    .local v4, "nriTransactionId":[B
    if-nez v4, :cond_15

    .line 1894
    return v0

    .line 1854
    .end local v3    # "nriStatus":I
    .end local v4    # "nriTransactionId":[B
    :pswitch_6
    const/16 v3, 0x83

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1855
    .local v3, "niContentLocation":[B
    if-nez v3, :cond_e

    .line 1856
    return v0

    .line 1860
    :cond_e
    const/16 v4, 0x88

    invoke-virtual {p0, v4}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v4

    .line 1861
    .local v4, "niExpiry":J
    cmp-long v6, v11, v4

    if-nez v6, :cond_f

    .line 1862
    return v0

    .line 1866
    :cond_f
    const/16 v6, 0x8a

    invoke-virtual {p0, v6}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v6

    .line 1867
    .local v6, "niMessageClass":[B
    if-nez v6, :cond_10

    .line 1868
    return v0

    .line 1872
    :cond_10
    const/16 v7, 0x8e

    invoke-virtual {p0, v7}, Lcom/google/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    .line 1873
    .local v7, "niMessageSize":J
    cmp-long v9, v11, v7

    if-nez v9, :cond_11

    .line 1874
    return v0

    .line 1878
    :cond_11
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v9

    .line 1879
    .local v9, "niTransactionId":[B
    if-nez v9, :cond_15

    .line 1880
    return v0

    .line 1840
    .end local v3    # "niContentLocation":[B
    .end local v4    # "niExpiry":J
    .end local v6    # "niMessageClass":[B
    .end local v7    # "niMessageSize":J
    .end local v9    # "niTransactionId":[B
    :pswitch_7
    const/16 v3, 0x92

    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v3

    .line 1841
    .local v3, "scResponseStatus":I
    if-nez v3, :cond_12

    .line 1842
    return v0

    .line 1846
    :cond_12
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v4

    .line 1847
    .local v4, "scTransactionId":[B
    if-nez v4, :cond_15

    .line 1848
    return v0

    .line 1820
    .end local v3    # "scResponseStatus":I
    .end local v4    # "scTransactionId":[B
    :pswitch_8
    invoke-virtual {p0, v3}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    .line 1821
    .local v3, "srContentType":[B
    if-nez v3, :cond_13

    .line 1822
    return v0

    .line 1826
    :cond_13
    invoke-virtual {p0, v8}, Lcom/google/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    .line 1827
    .local v4, "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-nez v4, :cond_14

    .line 1828
    return v0

    .line 1832
    :cond_14
    invoke-virtual {p0, v10}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v5

    .line 1833
    .local v5, "srTransactionId":[B
    if-nez v5, :cond_15

    .line 1834
    return v0

    .line 2009
    .end local v3    # "srContentType":[B
    .end local v4    # "srFrom":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "srTransactionId":[B
    :cond_15
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I
    .locals 4
    .param p0, "part"    # Lcom/google/android/mms/pdu/PduPart;

    .line 1763
    nop

    .line 1764
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v0, :cond_0

    .line 1766
    return v1

    .line 1770
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 1771
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    .line 1772
    .local v0, "contentId":[B
    if-eqz v0, :cond_1

    .line 1773
    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_1

    .line 1774
    return v2

    .line 1779
    :cond_1
    return v1

    .line 1783
    .end local v0    # "contentId":[B
    :cond_2
    sget-object v0, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v0, :cond_3

    .line 1784
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    .line 1785
    .local v0, "contentType":[B
    if-eqz v0, :cond_3

    .line 1786
    sget-object v3, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-ne v1, v3, :cond_3

    .line 1787
    return v2

    .line 1792
    .end local v0    # "contentType":[B
    :cond_3
    return v1
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1227
    nop

    .line 1228
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1229
    .local v0, "temp":I
    nop

    .line 1230
    and-int/lit16 v1, v0, 0xff

    return v1
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1193
    nop

    .line 1194
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1195
    .local v0, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1196
    .local v1, "temp":I
    nop

    .line 1197
    :goto_0
    const/4 v2, -0x1

    if-eq v2, v1, :cond_2

    if-eqz v1, :cond_2

    .line 1199
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1200
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 1204
    :cond_0
    invoke-static {v1}, Lcom/google/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1205
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 1209
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1210
    goto :goto_0

    .line 1213
    :cond_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1214
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2

    .line 1217
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method protected static isText(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 1177
    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    .line 1178
    :cond_1
    return v0

    .line 1181
    :cond_2
    const/16 v1, 0xd

    if-eq p0, v1, :cond_3

    packed-switch p0, :pswitch_data_0

    .line 1188
    const/4 v0, 0x0

    return v0

    .line 1185
    :cond_3
    :pswitch_0
    return v0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2
    .param p0, "ch"    # I

    .line 1133
    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_2

    const/16 v1, 0x7e

    if-le p0, v1, :cond_0

    goto :goto_0

    .line 1137
    :cond_0
    const/16 v1, 0x22

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_1

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq p0, v1, :cond_1

    const/16 v1, 0x7d

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    .line 1158
    const/4 v0, 0x1

    return v0

    .line 1155
    :cond_1
    :pswitch_0
    return v0

    .line 1134
    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "text"    # Ljava/lang/String;

    .line 953
    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    .line 1531
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1533
    const/4 v0, 0x0

    .line 1534
    .local v0, "contentType":[B
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1535
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1536
    .local v2, "temp":I
    nop

    .line 1537
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1539
    and-int/lit16 v3, v2, 0xff

    .line 1541
    .local v3, "cur":I
    const/16 v4, 0x20

    const/16 v5, 0x7f

    const/4 v6, 0x0

    if-ge v3, v4, :cond_5

    .line 1542
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 1543
    .local v7, "length":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v8

    .line 1544
    .local v8, "startPos":I
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1545
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1546
    nop

    .line 1547
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1548
    and-int/lit16 v1, v2, 0xff

    .line 1550
    .local v1, "first":I
    if-lt v1, v4, :cond_0

    if-gt v1, v5, :cond_0

    .line 1551
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    .line 1552
    :cond_0
    if-le v1, v5, :cond_4

    .line 1553
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1555
    .local v4, "index":I
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 1556
    sget-object v5, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    .line 1558
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1559
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    .line 1561
    .end local v4    # "index":I
    :goto_0
    nop

    .line 1566
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    .line 1567
    .local v4, "endPos":I
    sub-int v5, v8, v4

    sub-int v5, v7, v5

    .line 1568
    .local v5, "parameterLen":I
    if-lez v5, :cond_2

    .line 1569
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, p1, v9}, Lcom/google/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    .line 1572
    :cond_2
    if-gez v5, :cond_3

    .line 1573
    const-string v9, "PduParser"

    const-string v10, "Corrupt MMS message"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    sget-object v9, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v6, v9, v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    return-object v6

    .line 1576
    .end local v1    # "first":I
    .end local v4    # "endPos":I
    .end local v5    # "parameterLen":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_3
    goto :goto_2

    .line 1562
    .restart local v1    # "first":I
    .restart local v7    # "length":I
    .restart local v8    # "startPos":I
    :cond_4
    const-string v4, "PduParser"

    const-string v5, "Corrupt content-type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    sget-object v4, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 1576
    .end local v1    # "first":I
    .end local v7    # "length":I
    .end local v8    # "startPos":I
    :cond_5
    if-gt v3, v5, :cond_6

    .line 1577
    invoke-static {p0, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_2

    .line 1579
    :cond_6
    sget-object v1, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    .line 1580
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    aget-object v1, v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 1583
    :goto_2
    return-object v0
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 11
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "length"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ByteArrayInputStream;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1360
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 1361
    nop

    .line 1363
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1364
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1365
    .local v1, "tempPos":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1366
    .local v2, "lastLen":I
    :goto_0
    if-lez v2, :cond_e

    .line 1367
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .line 1368
    .local v3, "param":I
    nop

    .line 1369
    add-int/lit8 v2, v2, -0x1

    .line 1371
    const/16 v4, 0x7f

    const/4 v5, 0x1

    const/16 v6, 0x81

    const/4 v7, 0x0

    if-eq v3, v6, :cond_9

    const/16 v6, 0x83

    if-eq v3, v6, :cond_5

    const/16 v8, 0x85

    const/16 v9, 0x97

    if-eq v3, v8, :cond_3

    if-eq v3, v9, :cond_3

    const/16 v8, 0x99

    if-eq v3, v8, :cond_1

    packed-switch v3, :pswitch_data_0

    .line 1502
    invoke-static {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v5, v4, :cond_0

    .line 1503
    const-string v4, "PduParser"

    const-string v5, "Corrupt Content-Type"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 1505
    :cond_0
    const/4 v2, 0x0

    .end local v3    # "param":I
    goto/16 :goto_6

    .line 1427
    .restart local v3    # "param":I
    :cond_1
    :pswitch_0
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1428
    .local v4, "start":[B
    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 1429
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1433
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v0, v1

    sub-int/2addr v5, v6

    .line 1434
    .end local v2    # "lastLen":I
    .local v5, "lastLen":I
    goto :goto_1

    .line 1490
    .end local v4    # "start":[B
    .end local v5    # "lastLen":I
    .restart local v2    # "lastLen":I
    :cond_3
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1491
    .local v4, "name":[B
    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 1492
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1495
    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1496
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v6, v0, v1

    sub-int/2addr v5, v6

    .line 1497
    .end local v2    # "lastLen":I
    .restart local v5    # "lastLen":I
    nop

    .line 1509
    .end local v3    # "param":I
    .end local v4    # "name":[B
    .end local v5    # "lastLen":I
    .restart local v2    # "lastLen":I
    :goto_1
    move v2, v5

    goto/16 :goto_6

    .line 1387
    .restart local v3    # "param":I
    :cond_5
    :pswitch_1
    invoke-virtual {p0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1388
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1389
    .local v5, "first":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1390
    if-le v5, v4, :cond_7

    .line 1392
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 1394
    .local v4, "index":I
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v7, v7

    if-ge v4, v7, :cond_6

    .line 1395
    sget-object v7, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v7, v7, v4

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1396
    .local v7, "type":[B
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    .end local v4    # "index":I
    .end local v7    # "type":[B
    :cond_6
    goto :goto_2

    .line 1402
    :cond_7
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1403
    .local v4, "type":[B
    if-eqz v4, :cond_8

    if-eqz p1, :cond_8

    .line 1404
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    .end local v4    # "type":[B
    :cond_8
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1409
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1410
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    nop

    .line 1509
    .end local v3    # "param":I
    .end local v4    # "lastLen":I
    .end local v5    # "first":I
    .restart local v2    # "lastLen":I
    :goto_3
    move v2, v4

    goto :goto_6

    .line 1451
    .restart local v3    # "param":I
    :cond_9
    invoke-virtual {p0, v5}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1452
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 1453
    .local v5, "firstValue":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1455
    const/16 v8, 0x20

    if-le v5, v8, :cond_a

    if-lt v5, v4, :cond_b

    :cond_a
    if-nez v5, :cond_c

    .line 1458
    :cond_b
    invoke-static {p0, v7}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1460
    .local v4, "charsetStr":[B
    :try_start_0
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/google/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v8

    .line 1462
    .local v8, "charsetInt":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    .end local v8    # "charsetInt":I
    goto :goto_4

    .line 1463
    :catch_0
    move-exception v8

    .line 1465
    .local v8, "e":Ljava/io/UnsupportedEncodingException;
    const-string v9, "PduParser"

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1466
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1468
    .end local v4    # "charsetStr":[B
    .end local v8    # "e":Ljava/io/UnsupportedEncodingException;
    :goto_4
    goto :goto_5

    .line 1470
    :cond_c
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v7

    long-to-int v4, v7

    .line 1471
    .local v4, "charset":I
    if-eqz p1, :cond_d

    .line 1472
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    .end local v4    # "charset":I
    :cond_d
    :goto_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v1

    .line 1477
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v6, v0, v1

    sub-int/2addr v4, v6

    .line 1478
    .end local v2    # "lastLen":I
    .local v4, "lastLen":I
    goto :goto_3

    .line 1509
    .end local v3    # "param":I
    .end local v4    # "lastLen":I
    .end local v5    # "firstValue":I
    .restart local v2    # "lastLen":I
    :goto_6
    goto/16 :goto_0

    .line 1511
    :cond_e
    if-eqz v2, :cond_f

    .line 1512
    const-string v3, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x89
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 7
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1029
    nop

    .line 1030
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "returnValue":Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v1, 0x0

    .line 1033
    .local v1, "charset":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .line 1034
    .local v2, "temp":I
    nop

    .line 1035
    and-int/lit16 v3, v2, 0xff

    .line 1036
    .local v3, "first":I
    if-nez v3, :cond_0

    .line 1037
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v5, ""

    invoke-direct {v4, v5}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 1040
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1041
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 1042
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 1044
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    .line 1047
    :cond_1
    const/4 v4, 0x0

    invoke-static {p0, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1050
    .local v4, "textString":[B
    if-eqz v1, :cond_2

    .line 1051
    :try_start_0
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v1, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v5

    goto :goto_0

    .line 1055
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1053
    :cond_2
    new-instance v5, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    .line 1057
    :goto_0
    nop

    .line 1059
    return-object v0

    .line 1055
    :goto_1
    nop

    .line 1056
    .local v5, "e":Ljava/lang/Exception;
    const/4 v6, 0x0

    return-object v6
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1302
    nop

    .line 1303
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1304
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1305
    .local v0, "temp":I
    nop

    .line 1306
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1307
    const/16 v1, 0x7f

    if-le v0, v1, :cond_0

    .line 1308
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1

    .line 1310
    :cond_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v1

    return-wide v1
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 8
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1270
    nop

    .line 1271
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1272
    .local v0, "temp":I
    nop

    .line 1273
    and-int/lit16 v1, v0, 0xff

    .line 1275
    .local v1, "count":I
    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 1279
    const-wide/16 v3, 0x0

    .line 1281
    .local v3, "result":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 1282
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1283
    nop

    .line 1284
    shl-long/2addr v3, v2

    .line 1285
    and-int/lit16 v6, v0, 0xff

    int-to-long v6, v6

    add-long/2addr v3, v6

    .line 1281
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1288
    .end local v5    # "i":I
    :cond_0
    return-wide v3

    .line 1276
    .end local v3    # "result":J
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1247
    nop

    .line 1248
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1249
    .local v0, "temp":I
    nop

    .line 1250
    and-int/lit8 v1, v0, 0x7f

    return v1
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 967
    nop

    .line 968
    const/4 v0, 0x0

    .line 969
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 970
    .local v1, "temp":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 971
    return v1

    .line 974
    :cond_0
    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_1

    .line 975
    shl-int/lit8 v0, v0, 0x7

    .line 976
    and-int/lit8 v3, v1, 0x7f

    or-int/2addr v0, v3

    .line 977
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 978
    if-ne v1, v2, :cond_0

    .line 979
    return v1

    .line 983
    :cond_1
    shl-int/lit8 v0, v0, 0x7

    .line 984
    and-int/lit8 v2, v1, 0x7f

    or-int/2addr v0, v2

    .line 986
    return v0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 4
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 1004
    nop

    .line 1005
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    .line 1006
    .local v0, "temp":I
    nop

    .line 1007
    and-int/lit16 v1, v0, 0xff

    .line 1009
    .local v1, "first":I
    const/16 v2, 0x1e

    if-gt v1, v2, :cond_0

    .line 1010
    return v1

    .line 1011
    :cond_0
    const/16 v2, 0x1f

    if-ne v1, v2, :cond_1

    .line 1012
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    return v2

    .line 1015
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Value length > LENGTH_QUOTE!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "stringType"    # I

    .line 1071
    nop

    .line 1089
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1092
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .line 1093
    .local v1, "temp":I
    nop

    .line 1094
    if-ne v0, p1, :cond_0

    const/16 v2, 0x22

    if-ne v2, v1, :cond_0

    .line 1097
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1098
    :cond_0
    if-nez p1, :cond_1

    const/16 v2, 0x7f

    if-ne v2, v1, :cond_1

    .line 1101
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    .line 1104
    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1112
    :goto_0
    invoke-static {p0, p1}, Lcom/google/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 3
    .param p0, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p1, "length"    # I

    .line 1322
    nop

    .line 1323
    new-array v0, p1, [B

    .line 1324
    .local v0, "area":[B
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v1

    .line 1325
    .local v1, "readLen":I
    if-ge v1, p1, :cond_0

    .line 1326
    const/4 v2, -0x1

    return v2

    .line 1328
    :cond_0
    return v1
.end method


# virtual methods
.method public parse()Lcom/google/android/mms/pdu/GenericPdu;
    .locals 7

    .line 111
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 112
    return-object v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    .line 117
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_1

    .line 119
    return-object v1

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v2, 0x8c

    invoke-virtual {v0, v2}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    .line 126
    .local v0, "messageType":I
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google/android/mms/pdu/PduHeaders;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    const-string v2, "check mandatory headers failed!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 128
    return-object v1

    .line 131
    :cond_2
    const/16 v2, 0x80

    if-eq v2, v0, :cond_3

    const/16 v2, 0x84

    if-ne v2, v0, :cond_4

    .line 134
    :cond_3
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v2}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    .line 135
    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    if-nez v2, :cond_4

    .line 137
    return-object v1

    .line 141
    :cond_4
    packed-switch v0, :pswitch_data_0

    .line 225
    const-string v2, "Parser doesn\'t support this message type in this version!"

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 226
    return-object v1

    .line 214
    :pswitch_0
    new-instance v1, Lcom/google/android/mms/pdu/ReadOrigInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 216
    .local v1, "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    return-object v1

    .line 221
    .end local v1    # "readOrigInd":Lcom/google/android/mms/pdu/ReadOrigInd;
    :pswitch_1
    new-instance v1, Lcom/google/android/mms/pdu/ReadRecInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/ReadRecInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 223
    .local v1, "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    return-object v1

    .line 200
    .end local v1    # "readRecInd":Lcom/google/android/mms/pdu/ReadRecInd;
    :pswitch_2
    new-instance v1, Lcom/google/android/mms/pdu/DeliveryInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/DeliveryInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 202
    .local v1, "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    return-object v1

    .line 207
    .end local v1    # "deliveryInd":Lcom/google/android/mms/pdu/DeliveryInd;
    :pswitch_3
    new-instance v1, Lcom/google/android/mms/pdu/AcknowledgeInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 209
    .local v1, "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    return-object v1

    .line 172
    .end local v1    # "acknowledgeInd":Lcom/google/android/mms/pdu/AcknowledgeInd;
    :pswitch_4
    new-instance v2, Lcom/google/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v2, v3, v4}, Lcom/google/android/mms/pdu/RetrieveConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 175
    .local v2, "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    .line 176
    .local v3, "contentType":[B
    if-nez v3, :cond_5

    .line 177
    return-object v1

    .line 179
    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 180
    .local v4, "ctTypeStr":Ljava/lang/String;
    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "application/vnd.wap.multipart.related"

    .line 181
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "application/vnd.wap.multipart.alternative"

    .line 182
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_0

    .line 187
    :cond_6
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 190
    iget-object v1, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 191
    .local v1, "firstPart":Lcom/google/android/mms/pdu/PduPart;
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6}, Lcom/google/android/mms/pdu/PduBody;->removeAll()V

    .line 192
    iget-object v6, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-virtual {v6, v5, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    .line 193
    return-object v2

    .line 195
    .end local v1    # "firstPart":Lcom/google/android/mms/pdu/PduPart;
    :cond_7
    return-object v1

    .line 186
    :cond_8
    :goto_0
    return-object v2

    .line 165
    .end local v2    # "retrieveConf":Lcom/google/android/mms/pdu/RetrieveConf;
    .end local v3    # "contentType":[B
    .end local v4    # "ctTypeStr":Ljava/lang/String;
    :pswitch_5
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 167
    .local v1, "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    return-object v1

    .line 158
    .end local v1    # "notifyRespInd":Lcom/google/android/mms/pdu/NotifyRespInd;
    :pswitch_6
    new-instance v1, Lcom/google/android/mms/pdu/NotificationInd;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/NotificationInd;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 160
    .local v1, "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    return-object v1

    .line 152
    .end local v1    # "notificationInd":Lcom/google/android/mms/pdu/NotificationInd;
    :pswitch_7
    new-instance v1, Lcom/google/android/mms/pdu/SendConf;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v1, v2}, Lcom/google/android/mms/pdu/SendConf;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    .line 153
    .local v1, "sendConf":Lcom/google/android/mms/pdu/SendConf;
    return-object v1

    .line 146
    .end local v1    # "sendConf":Lcom/google/android/mms/pdu/SendConf;
    :pswitch_8
    new-instance v1, Lcom/google/android/mms/pdu/SendReq;

    iget-object v2, p0, Lcom/google/android/mms/pdu/PduParser;->mHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    iget-object v3, p0, Lcom/google/android/mms/pdu/PduParser;->mBody:Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v1, v2, v3}, Lcom/google/android/mms/pdu/SendReq;-><init>(Lcom/google/android/mms/pdu/PduHeaders;Lcom/google/android/mms/pdu/PduBody;)V

    .line 147
    .local v1, "sendReq":Lcom/google/android/mms/pdu/SendReq;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduHeaders;
    .locals 11
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    .line 237
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 238
    return-object v0

    .line 240
    :cond_0
    const/4 v1, 0x1

    .line 241
    .local v1, "keepParsing":Z
    new-instance v2, Lcom/google/android/mms/pdu/PduHeaders;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 243
    .local v2, "headers":Lcom/google/android/mms/pdu/PduHeaders;
    :goto_0
    if-eqz v1, :cond_11

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    if-lez v3, :cond_11

    .line 244
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 245
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v4

    .line 247
    .local v4, "headerField":I
    const/16 v5, 0x20

    const/4 v6, 0x0

    if-lt v4, v5, :cond_1

    const/16 v5, 0x7f

    if-gt v4, v5, :cond_1

    .line 248
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 249
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 254
    .local v3, "bVal":[B
    goto :goto_0

    .line 256
    .end local v3    # "bVal":[B
    :cond_1
    const/16 v5, 0x83

    const/16 v7, 0x81

    const/16 v8, 0x80

    packed-switch v4, :pswitch_data_0

    .line 821
    :pswitch_0
    const-string v3, "Unknown header"

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v4    # "headerField":I
    goto/16 :goto_12

    .line 776
    .restart local v4    # "headerField":I
    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    .line 780
    goto/16 :goto_12

    .line 367
    :pswitch_2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 372
    .local v5, "value":J
    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v5    # "value":J
    goto/16 :goto_12

    .line 373
    :catch_0
    move-exception v3

    .line 374
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "is not Long-Integer header field!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 375
    return-object v0

    .line 754
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_3
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 757
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 761
    :try_start_1
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 765
    goto/16 :goto_12

    .line 762
    :catch_1
    move-exception v3

    .line 763
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not Integer-Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 764
    return-object v0

    .line 732
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_4
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 735
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    .line 738
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    .line 742
    goto/16 :goto_12

    .line 694
    :pswitch_5
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 698
    :try_start_2
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    .line 702
    nop

    .line 706
    :try_start_3
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 711
    .local v5, "perviouslySentDate":J
    const/16 v3, 0xa1

    invoke-virtual {v2, v5, v6, v3}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 716
    .end local v5    # "perviouslySentDate":J
    goto/16 :goto_12

    .line 713
    :catch_2
    move-exception v3

    .line 714
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "is not Long-Integer header field!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 715
    return-object v0

    .line 699
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v3

    .line 700
    .restart local v3    # "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not Integer-Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 701
    return-object v0

    .line 659
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_6
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 663
    :try_start_4
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 667
    nop

    .line 670
    nop

    .line 671
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 672
    .local v3, "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_10

    .line 678
    const/16 v5, 0xa0

    :try_start_5
    invoke-virtual {v2, v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 685
    .end local v3    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "headerField":I
    :goto_1
    goto/16 :goto_12

    .line 682
    .restart local v3    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "headerField":I
    :catch_4
    move-exception v5

    .line 683
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Encoded-String-Value header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 684
    return-object v0

    .line 680
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_5
    move-exception v5

    .line 681
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "null pointer error!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/NullPointerException;
    goto :goto_1

    .line 664
    .end local v3    # "previouslySentBy":Lcom/google/android/mms/pdu/EncodedStringValue;
    :catch_6
    move-exception v3

    .line 665
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " is not Integer-Value"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 666
    return-object v0

    .line 429
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_7
    nop

    .line 430
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 431
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_10

    .line 437
    :try_start_6
    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_7

    .line 443
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "headerField":I
    :goto_2
    goto/16 :goto_12

    .line 440
    .restart local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "headerField":I
    :catch_7
    move-exception v5

    .line 441
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Encoded-String-Value header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 442
    return-object v0

    .line 438
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_8
    move-exception v5

    .line 439
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "null pointer error!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/NullPointerException;
    goto :goto_2

    .line 636
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    :pswitch_8
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 643
    .local v3, "version":I
    const/16 v5, 0x8d

    :try_start_7
    invoke-virtual {v2, v3, v5}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_7
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_9

    .line 651
    goto/16 :goto_12

    .line 648
    :catch_9
    move-exception v5

    .line 649
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Octet header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 650
    return-object v0

    .line 644
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_a
    move-exception v5

    .line 645
    .local v5, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set invalid Octet value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " into the header filed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 647
    return-object v0

    .line 259
    .end local v3    # "version":I
    .end local v5    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_9
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 263
    .local v3, "messageType":I
    packed-switch v3, :pswitch_data_1

    .line 283
    :try_start_8
    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_8
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_8 .. :try_end_8} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_b

    goto :goto_3

    .line 280
    :pswitch_a
    return-object v0

    .line 291
    :goto_3
    goto/16 :goto_12

    .line 288
    :catch_b
    move-exception v5

    .line 289
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Octet header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 290
    return-object v0

    .line 284
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_c
    move-exception v5

    .line 285
    .local v5, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set invalid Octet value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " into the header filed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 287
    return-object v0

    .line 584
    .end local v3    # "messageType":I
    .end local v5    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_b
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 585
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 591
    .local v3, "messageClass":I
    const/16 v9, 0x8a

    if-lt v3, v8, :cond_6

    .line 594
    if-ne v8, v3, :cond_2

    .line 595
    :try_start_9
    const-string v5, "personal"

    .line 596
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 595
    invoke-virtual {v2, v5, v9}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 613
    :catch_d
    move-exception v5

    goto :goto_4

    .line 611
    :catch_e
    move-exception v5

    goto :goto_5

    .line 598
    :cond_2
    if-ne v7, v3, :cond_3

    .line 599
    const-string v5, "advertisement"

    .line 600
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 599
    invoke-virtual {v2, v5, v9}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 602
    :cond_3
    const/16 v6, 0x82

    if-ne v6, v3, :cond_4

    .line 603
    const-string v5, "informational"

    .line 604
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 603
    invoke-virtual {v2, v5, v9}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto :goto_6

    .line 606
    :cond_4
    if-ne v5, v3, :cond_5

    .line 607
    const-string v5, "auto"

    .line 608
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 607
    invoke-virtual {v2, v5, v9}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_9
    .catch Ljava/lang/NullPointerException; {:try_start_9 .. :try_end_9} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_6

    .line 613
    :goto_4
    nop

    .line 614
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Text-String header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 615
    return-object v0

    .line 611
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :goto_5
    nop

    .line 612
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "null pointer error!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 616
    .end local v3    # "messageClass":I
    .end local v4    # "headerField":I
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :cond_5
    :goto_6
    goto/16 :goto_12

    .line 619
    .restart local v3    # "messageClass":I
    .restart local v4    # "headerField":I
    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 620
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    .line 621
    .local v5, "messageClassString":[B
    if-eqz v5, :cond_7

    .line 623
    :try_start_a
    invoke-virtual {v2, v5, v9}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_10
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_f

    .line 629
    .end local v5    # "messageClassString":[B
    :goto_7
    goto :goto_8

    .line 626
    .restart local v5    # "messageClassString":[B
    :catch_f
    move-exception v6

    .line 627
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is not Text-String header field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 628
    return-object v0

    .line 624
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_10
    move-exception v6

    .line 625
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v7, "null pointer error!"

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/NullPointerException;
    goto :goto_7

    .line 632
    .end local v5    # "messageClassString":[B
    :cond_7
    :goto_8
    goto/16 :goto_12

    .line 531
    .end local v3    # "messageClass":I
    :pswitch_c
    const/4 v3, 0x0

    .line 532
    .local v3, "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 535
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v5

    .line 538
    .local v5, "fromToken":I
    if-ne v8, v5, :cond_a

    .line 540
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 541
    if-eqz v3, :cond_b

    .line 542
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    .line 543
    .local v7, "address":[B
    if-eqz v7, :cond_9

    .line 544
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    .line 545
    .local v8, "str":Ljava/lang/String;
    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 546
    .local v9, "endIndex":I
    if-lez v9, :cond_8

    .line 547
    invoke-virtual {v8, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 550
    :cond_8
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_11

    .line 554
    goto :goto_9

    .line 551
    :catch_11
    move-exception v6

    .line 552
    .restart local v6    # "e":Ljava/lang/NullPointerException;
    const-string v10, "null pointer error!"

    invoke-static {v10}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 553
    return-object v0

    .line 556
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "address":[B
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "endIndex":I
    :cond_9
    :goto_9
    goto :goto_a

    .line 559
    :cond_a
    :try_start_c
    new-instance v6, Lcom/google/android/mms/pdu/EncodedStringValue;

    const-string v7, "insert-address-token"

    .line 560
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_14

    move-object v3, v6

    .line 564
    nop

    .line 572
    :cond_b
    :goto_a
    const/16 v6, 0x89

    :try_start_d
    invoke-virtual {v2, v3, v6}, Lcom/google/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_12

    .line 578
    .end local v3    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "headerField":I
    .end local v5    # "fromToken":I
    :goto_b
    goto/16 :goto_12

    .line 575
    .restart local v3    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .restart local v4    # "headerField":I
    .restart local v5    # "fromToken":I
    :catch_12
    move-exception v6

    .line 576
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is not Encoded-String-Value header field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 577
    return-object v0

    .line 573
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_13
    move-exception v6

    .line 574
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v7, "null pointer error!"

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/NullPointerException;
    goto :goto_b

    .line 561
    :catch_14
    move-exception v6

    .line 562
    .restart local v6    # "e":Ljava/lang/NullPointerException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is not Encoded-String-Value header field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 563
    return-object v0

    .line 494
    .end local v3    # "from":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v5    # "fromToken":I
    .end local v6    # "e":Ljava/lang/NullPointerException;
    :pswitch_d
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    .line 497
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 502
    .local v3, "token":I
    :try_start_e
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5
    :try_end_e
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_16

    .line 506
    .local v5, "timeValue":J
    nop

    .line 505
    nop

    .line 507
    if-ne v7, v3, :cond_c

    .line 510
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 518
    :cond_c
    :try_start_f
    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_15

    .line 522
    goto/16 :goto_12

    .line 519
    :catch_15
    move-exception v7

    .line 520
    .local v7, "e":Ljava/lang/RuntimeException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "is not Long-Integer header field!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 521
    return-object v0

    .line 503
    .end local v5    # "timeValue":J
    .end local v7    # "e":Ljava/lang/RuntimeException;
    :catch_16
    move-exception v5

    .line 504
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Long-Integer header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 505
    return-object v0

    .line 323
    .end local v3    # "token":I
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :pswitch_e
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 330
    .local v3, "value":I
    :try_start_10
    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_10
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_10 .. :try_end_10} :catch_18
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_17

    .line 338
    goto/16 :goto_12

    .line 335
    :catch_17
    move-exception v5

    .line 336
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Octet header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 337
    return-object v0

    .line 331
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_18
    move-exception v5

    .line 332
    .local v5, "e":Lcom/google/android/mms/InvalidHeaderValueException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set invalid Octet value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " into the header filed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 334
    return-object v0

    .line 348
    .end local v3    # "value":I
    .end local v5    # "e":Lcom/google/android/mms/InvalidHeaderValueException;
    :pswitch_f
    :try_start_11
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v5

    .line 353
    .local v5, "value":J
    invoke-virtual {v2, v5, v6, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_19

    .line 357
    .end local v5    # "value":J
    goto/16 :goto_12

    .line 354
    :catch_19
    move-exception v3

    .line 355
    .local v3, "e":Ljava/lang/RuntimeException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "is not Long-Integer header field!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 356
    return-object v0

    .line 784
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :pswitch_10
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 786
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    nop

    .line 787
    invoke-static {p1, v3}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v6

    .line 789
    .local v6, "contentType":[B
    if-eqz v6, :cond_d

    .line 795
    const/16 v7, 0x84

    :try_start_12
    invoke-virtual {v2, v6, v7}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_1a

    .line 801
    :goto_c
    goto :goto_d

    .line 798
    :catch_1a
    move-exception v5

    .line 799
    .local v5, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is not Text-String header field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 800
    return-object v0

    .line 796
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_1b
    move-exception v7

    .line 797
    .local v7, "e":Ljava/lang/NullPointerException;
    const-string v8, "null pointer error!"

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v7    # "e":Ljava/lang/NullPointerException;
    goto :goto_c

    .line 805
    :cond_d
    :goto_d
    const/16 v7, 0x99

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    sput-object v7, Lcom/google/android/mms/pdu/PduParser;->mStartParam:[B

    .line 808
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    sput-object v5, Lcom/google/android/mms/pdu/PduParser;->mTypeParam:[B

    .line 810
    const/4 v1, 0x0

    .line 811
    goto/16 :goto_12

    .line 401
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v6    # "contentType":[B
    :pswitch_11
    invoke-static {p1, v6}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 402
    .local v3, "value":[B
    if-eqz v3, :cond_10

    .line 408
    :try_start_13
    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_13} :catch_1d
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1c

    .line 414
    .end local v3    # "value":[B
    .end local v4    # "headerField":I
    :goto_e
    goto :goto_12

    .line 411
    .restart local v3    # "value":[B
    .restart local v4    # "headerField":I
    :catch_1c
    move-exception v5

    .line 412
    .restart local v5    # "e":Ljava/lang/RuntimeException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "is not Text-String header field!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 413
    return-object v0

    .line 409
    .end local v5    # "e":Ljava/lang/RuntimeException;
    :catch_1d
    move-exception v5

    .line 410
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "null pointer error!"

    invoke-static {v6}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/lang/NullPointerException;
    goto :goto_e

    .line 453
    .end local v3    # "value":[B
    :pswitch_12
    nop

    .line 454
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    .line 455
    .local v3, "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v3, :cond_10

    .line 456
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    .line 457
    .local v5, "address":[B
    if-eqz v5, :cond_f

    .line 458
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v5}, Ljava/lang/String;-><init>([B)V

    .line 463
    .local v7, "str":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 464
    .local v8, "endIndex":I
    if-lez v8, :cond_e

    .line 465
    invoke-virtual {v7, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 468
    :cond_e
    :try_start_14
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/google/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_1e

    .line 472
    goto :goto_f

    .line 469
    :catch_1e
    move-exception v6

    .line 470
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v9, "null pointer error!"

    invoke-static {v9}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 471
    return-object v0

    .line 476
    .end local v6    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "endIndex":I
    :cond_f
    :goto_f
    :try_start_15
    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    :try_end_15
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1f

    .line 482
    .end local v5    # "address":[B
    :goto_10
    goto :goto_11

    .line 479
    .restart local v5    # "address":[B
    :catch_1f
    move-exception v6

    .line 480
    .local v6, "e":Ljava/lang/RuntimeException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "is not Encoded-String-Value header field!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 481
    return-object v0

    .line 477
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :catch_20
    move-exception v6

    .line 478
    .local v6, "e":Ljava/lang/NullPointerException;
    const-string v7, "null pointer error!"

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .end local v6    # "e":Ljava/lang/NullPointerException;
    goto :goto_10

    .line 483
    .end local v5    # "address":[B
    :goto_11
    nop

    .line 824
    .end local v3    # "value":Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v4    # "headerField":I
    :cond_10
    :goto_12
    goto/16 :goto_0

    .line 826
    :cond_11
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_8
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_7
        :pswitch_12
        :pswitch_11
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_11
        :pswitch_f
        :pswitch_6
        :pswitch_5
        :pswitch_e
        :pswitch_e
        :pswitch_4
        :pswitch_e
        :pswitch_7
        :pswitch_e
        :pswitch_0
        :pswitch_e
        :pswitch_3
        :pswitch_e
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_e
        :pswitch_7
        :pswitch_7
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method protected parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z
    .locals 11
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;
    .param p2, "part"    # Lcom/google/android/mms/pdu/PduPart;
    .param p3, "length"    # I

    .line 1596
    nop

    .line 1597
    nop

    .line 1598
    nop

    .line 1616
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 1617
    .local v0, "startPos":I
    const/4 v1, 0x0

    .line 1618
    .local v1, "tempPos":I
    move v2, v1

    move v1, p3

    .line 1619
    .local v1, "lastLen":I
    .local v2, "tempPos":I
    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lez v1, :cond_10

    .line 1620
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .line 1621
    .local v5, "header":I
    nop

    .line 1622
    add-int/lit8 v1, v1, -0x1

    .line 1624
    const/16 v6, 0x7f

    const/4 v7, -0x1

    if-le v5, v6, :cond_b

    .line 1626
    const/16 v6, 0x8e

    if-eq v5, v6, :cond_9

    const/16 v6, 0xae

    if-eq v5, v6, :cond_3

    const/16 v6, 0xc0

    if-eq v5, v6, :cond_1

    const/16 v6, 0xc5

    if-eq v5, v6, :cond_3

    .line 1714
    invoke-static {p1, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v7, v3, :cond_0

    .line 1715
    const-string v3, "PduParser"

    const-string v6, "Corrupt Part headers"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    return v4

    .line 1718
    :cond_0
    const/4 v1, 0x0

    .line 1719
    goto/16 :goto_2

    .line 1645
    :cond_1
    invoke-static {p1, v3}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1646
    .local v3, "contentId":[B
    if-eqz v3, :cond_2

    .line 1647
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 1650
    :cond_2
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1651
    sub-int v4, v0, v2

    sub-int v1, p3, v4

    .line 1652
    goto/16 :goto_2

    .line 1668
    .end local v3    # "contentId":[B
    :cond_3
    iget-boolean v6, p0, Lcom/google/android/mms/pdu/PduParser;->mParseContentDisposition:Z

    if-eqz v6, :cond_f

    .line 1669
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    .line 1670
    .local v6, "len":I
    invoke-virtual {p1, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    .line 1671
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    .line 1672
    .local v3, "thisStartPos":I
    const/4 v7, 0x0

    .line 1673
    .local v7, "thisEndPos":I
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1675
    .local v8, "value":I
    const/16 v9, 0x80

    if-ne v8, v9, :cond_4

    .line 1676
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1677
    :cond_4
    const/16 v9, 0x81

    if-ne v8, v9, :cond_5

    .line 1678
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1679
    :cond_5
    const/16 v9, 0x82

    if-ne v8, v9, :cond_6

    .line 1680
    sget-object v9, Lcom/google/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_1

    .line 1682
    :cond_6
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    .line 1684
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setContentDisposition([B)V

    .line 1689
    :goto_1
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1690
    sub-int v9, v3, v7

    if-ge v9, v6, :cond_8

    .line 1691
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v8

    .line 1692
    const/16 v9, 0x98

    if-ne v8, v9, :cond_7

    .line 1693
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v9

    invoke-virtual {p2, v9}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 1698
    :cond_7
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v7

    .line 1699
    sub-int v9, v3, v7

    if-ge v9, v6, :cond_8

    .line 1700
    sub-int v9, v3, v7

    sub-int v9, v6, v9

    .line 1701
    .local v9, "last":I
    new-array v10, v9, [B

    .line 1702
    .local v10, "temp":[B
    invoke-virtual {p1, v10, v4, v9}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 1706
    .end local v9    # "last":I
    .end local v10    # "temp":[B
    :cond_8
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1707
    sub-int v4, v0, v2

    sub-int v1, p3, v4

    .line 1708
    .end local v3    # "thisStartPos":I
    .end local v6    # "len":I
    .end local v7    # "thisEndPos":I
    .end local v8    # "value":I
    goto :goto_2

    .line 1632
    :cond_9
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    .line 1633
    .local v3, "contentLocation":[B
    if-eqz v3, :cond_a

    .line 1634
    invoke-virtual {p2, v3}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 1637
    :cond_a
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1638
    sub-int v4, v0, v2

    sub-int v1, p3, v4

    .line 1639
    goto :goto_2

    .line 1721
    .end local v3    # "contentLocation":[B
    :cond_b
    const/16 v8, 0x20

    if-lt v5, v8, :cond_d

    if-gt v5, v6, :cond_d

    .line 1723
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v6

    .line 1724
    .local v6, "tempHeader":[B
    invoke-static {p1, v4}, Lcom/google/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    .line 1727
    .local v4, "tempValue":[B
    const-string v7, "Content-Transfer-Encoding"

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    .line 1728
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-ne v3, v7, :cond_c

    .line 1729
    invoke-virtual {p2, v4}, Lcom/google/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    .line 1732
    :cond_c
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    .line 1733
    sub-int v3, v0, v2

    sub-int v1, p3, v3

    .line 1734
    .end local v4    # "tempValue":[B
    .end local v6    # "tempHeader":[B
    goto :goto_2

    .line 1739
    :cond_d
    invoke-static {p1, v1}, Lcom/google/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v7, v3, :cond_e

    .line 1740
    const-string v3, "PduParser"

    const-string v6, "Corrupt Part headers"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    return v4

    .line 1743
    :cond_e
    const/4 v1, 0x0

    .line 1745
    .end local v5    # "header":I
    :cond_f
    :goto_2
    goto/16 :goto_0

    .line 1747
    :cond_10
    if-eqz v1, :cond_11

    .line 1748
    const-string v3, "PduParser"

    const-string v5, "Corrupt Part headers"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    return v4

    .line 1752
    :cond_11
    return v3
.end method

.method protected parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;
    .locals 20
    .param p1, "pduDataStream"    # Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    .line 836
    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 837
    return-object v2

    .line 840
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    .line 841
    .local v3, "count":I
    new-instance v4, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v4}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 843
    .local v4, "body":Lcom/google/android/mms/pdu/PduBody;
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_0
    if-ge v6, v3, :cond_f

    .line 844
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    .line 845
    .local v7, "headerLength":I
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    .line 846
    .local v8, "dataLength":I
    new-instance v9, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 847
    .local v9, "part":Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v10

    .line 848
    .local v10, "startPos":I
    if-gtz v10, :cond_1

    .line 850
    return-object v2

    .line 854
    :cond_1
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 855
    .local v11, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    invoke-static {v1, v11}, Lcom/google/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v12

    .line 856
    .local v12, "contentType":[B
    if-eqz v12, :cond_2

    .line 857
    invoke-virtual {v9, v12}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_1

    .line 859
    :cond_2
    sget-object v13, Lcom/google/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 863
    :goto_1
    const/16 v13, 0x97

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 864
    .local v13, "name":[B
    if-eqz v13, :cond_3

    .line 865
    invoke-virtual {v9, v13}, Lcom/google/android/mms/pdu/PduPart;->setName([B)V

    .line 869
    :cond_3
    const/16 v14, 0x81

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 870
    .local v14, "charset":Ljava/lang/Integer;
    if-eqz v14, :cond_4

    .line 871
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v9, v15}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 875
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v15

    .line 876
    .local v15, "endPos":I
    sub-int v16, v10, v15

    sub-int v5, v7, v16

    .line 877
    .local v5, "partHeaderLen":I
    if-lez v5, :cond_5

    .line 878
    invoke-virtual {v0, v1, v9, v5}, Lcom/google/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google/android/mms/pdu/PduPart;I)Z

    move-result v16

    if-nez v16, :cond_6

    .line 880
    return-object v2

    .line 882
    :cond_5
    if-gez v5, :cond_6

    .line 884
    return-object v2

    .line 890
    :cond_6
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 891
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 892
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 893
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v16

    if-nez v16, :cond_7

    .line 894
    nop

    .line 895
    move/from16 v17, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 894
    .end local v3    # "count":I
    .local v17, "count":I
    invoke-static {v2, v3}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v2

    .line 895
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 894
    invoke-virtual {v9, v2}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    goto :goto_2

    .line 899
    .end local v17    # "count":I
    .restart local v3    # "count":I
    :cond_7
    move/from16 v17, v3

    .end local v3    # "count":I
    .restart local v17    # "count":I
    :goto_2
    if-lez v8, :cond_d

    .line 900
    new-array v2, v8, [B

    .line 901
    .local v2, "partData":[B
    new-instance v3, Ljava/lang/String;

    move/from16 v18, v5

    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    .end local v5    # "partHeaderLen":I
    .local v18, "partHeaderLen":I
    invoke-direct {v3, v5}, Ljava/lang/String;-><init>([B)V

    .line 902
    .local v3, "partContentType":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    .line 903
    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 905
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v5}, Lcom/google/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v5

    .line 907
    .local v5, "childBody":Lcom/google/android/mms/pdu/PduBody;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v9

    .line 908
    .end local v5    # "childBody":Lcom/google/android/mms/pdu/PduBody;
    nop

    .line 932
    const/4 v0, 0x0

    goto :goto_4

    .line 910
    :cond_8
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v0

    .line 911
    .local v0, "partDataEncoding":[B
    if-eqz v0, :cond_a

    .line 912
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    .line 913
    .local v5, "encoding":Ljava/lang/String;
    move-object/from16 v19, v0

    const-string v0, "base64"

    .end local v0    # "partDataEncoding":[B
    .local v19, "partDataEncoding":[B
    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 915
    invoke-static {v2}, Lcom/google/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v2

    goto :goto_3

    .line 916
    :cond_9
    const-string v0, "quoted-printable"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 918
    invoke-static {v2}, Lcom/google/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v2

    .end local v5    # "encoding":Ljava/lang/String;
    goto :goto_3

    .line 923
    .end local v19    # "partDataEncoding":[B
    .restart local v0    # "partDataEncoding":[B
    :cond_a
    move-object/from16 v19, v0

    .end local v0    # "partDataEncoding":[B
    .restart local v19    # "partDataEncoding":[B
    :cond_b
    :goto_3
    if-nez v2, :cond_c

    .line 924
    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    .line 925
    const/4 v0, 0x0

    return-object v0

    .line 927
    :cond_c
    const/4 v0, 0x0

    invoke-virtual {v9, v2}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .end local v2    # "partData":[B
    .end local v3    # "partContentType":Ljava/lang/String;
    .end local v19    # "partDataEncoding":[B
    goto :goto_4

    .line 932
    .end local v18    # "partHeaderLen":I
    .local v5, "partHeaderLen":I
    :cond_d
    move/from16 v18, v5

    const/4 v0, 0x0

    .end local v5    # "partHeaderLen":I
    .restart local v18    # "partHeaderLen":I
    :goto_4
    invoke-static {v9}, Lcom/google/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google/android/mms/pdu/PduPart;)I

    move-result v2

    if-nez v2, :cond_e

    .line 934
    const/4 v2, 0x0

    invoke-virtual {v4, v2, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(ILcom/google/android/mms/pdu/PduPart;)V

    goto :goto_5

    .line 937
    :cond_e
    const/4 v2, 0x0

    invoke-virtual {v4, v9}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 843
    .end local v7    # "headerLength":I
    .end local v8    # "dataLength":I
    .end local v9    # "part":Lcom/google/android/mms/pdu/PduPart;
    .end local v10    # "startPos":I
    .end local v11    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Object;>;"
    .end local v12    # "contentType":[B
    .end local v13    # "name":[B
    .end local v14    # "charset":Ljava/lang/Integer;
    .end local v15    # "endPos":I
    .end local v18    # "partHeaderLen":I
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move v5, v2

    move/from16 v3, v17

    move-object v2, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 941
    .end local v6    # "i":I
    .end local v17    # "count":I
    .local v3, "count":I
    :cond_f
    move/from16 v17, v3

    .end local v3    # "count":I
    .restart local v17    # "count":I
    return-object v4
.end method

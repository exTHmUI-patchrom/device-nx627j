.class public Lnubia/media/NubiaFileType;
.super Ljava/lang/Object;
.source "NubiaFileType.java"


# static fields
.field public static final FILE_TYPE_3G2:I = 0x19

.field public static final FILE_TYPE_3GP:I = 0x17

.field public static final FILE_TYPE_3GPP:I = 0x18

.field public static final FILE_TYPE_3GPP2:I = 0x1a

.field public static final FILE_TYPE_AAC:I = 0xa

.field public static final FILE_TYPE_AC3:I = 0xda

.field public static final FILE_TYPE_AIF:I = 0xdc

.field public static final FILE_TYPE_AIFF:I = 0xdd

.field public static final FILE_TYPE_AMR:I = 0x5

.field public static final FILE_TYPE_APE:I = 0xde

.field public static final FILE_TYPE_ARW:I = 0x70

.field public static final FILE_TYPE_ASF:I = 0x20

.field public static final FILE_TYPE_AVI:I = 0x1e

.field public static final FILE_TYPE_AWB:I = 0x6

.field public static final FILE_TYPE_BMP:I = 0x69

.field public static final FILE_TYPE_CR2:I = 0x6d

.field public static final FILE_TYPE_DCF:I = 0xcd

.field public static final FILE_TYPE_DFF:I = 0xe0

.field public static final FILE_TYPE_DIVX:I = 0xd7

.field public static final FILE_TYPE_DNG:I = 0x6c

.field public static final FILE_TYPE_DOC:I = 0xd2

.field public static final FILE_TYPE_DOCM:I = 0xe7

.field public static final FILE_TYPE_DOCX:I = 0xe6

.field public static final FILE_TYPE_DOT:I = 0xe3

.field public static final FILE_TYPE_DOTX:I = 0xe4

.field public static final FILE_TYPE_DSD:I = 0xe1

.field public static final FILE_TYPE_DSF:I = 0xdf

.field public static final FILE_TYPE_EC3:I = 0xdb

.field public static final FILE_TYPE_F4V:I = 0x23

.field public static final FILE_TYPE_FL:I = 0xcc

.field public static final FILE_TYPE_FLAC:I = 0xd5

.field public static final FILE_TYPE_FLV:I = 0x22

.field public static final FILE_TYPE_GIF:I = 0x67

.field public static final FILE_TYPE_HTM:I = 0xcf

.field public static final FILE_TYPE_HTML:I = 0xd0

.field public static final FILE_TYPE_IMY:I = 0x11

.field public static final FILE_TYPE_JPEG:I = 0x65

.field public static final FILE_TYPE_JPG:I = 0x64

.field public static final FILE_TYPE_JSON:I = 0xec

.field public static final FILE_TYPE_M2TS:I = 0x25

.field public static final FILE_TYPE_M3U:I = 0xc8

.field public static final FILE_TYPE_M3U8:I = 0xcb

.field public static final FILE_TYPE_M4A:I = 0x3

.field public static final FILE_TYPE_M4V:I = 0x14

.field public static final FILE_TYPE_MID:I = 0xc

.field public static final FILE_TYPE_MIDI:I = 0xd

.field public static final FILE_TYPE_MKA:I = 0xb

.field public static final FILE_TYPE_MKV:I = 0x1b

.field public static final FILE_TYPE_MOV:I = 0x16

.field public static final FILE_TYPE_MP3:I = 0x1

.field public static final FILE_TYPE_MP4:I = 0x15

.field public static final FILE_TYPE_MPD:I = 0xd8

.field public static final FILE_TYPE_MPEG:I = 0x12

.field public static final FILE_TYPE_MPG:I = 0x13

.field public static final FILE_TYPE_MPGA:I = 0x2

.field public static final FILE_TYPE_NEF:I = 0x6e

.field public static final FILE_TYPE_NRW:I = 0x6f

.field public static final FILE_TYPE_OGA:I = 0x9

.field public static final FILE_TYPE_OGG:I = 0x8

.field public static final FILE_TYPE_ORF:I = 0x72

.field public static final FILE_TYPE_PDF:I = 0xd1

.field public static final FILE_TYPE_PEF:I = 0x74

.field public static final FILE_TYPE_PLS:I = 0xc9

.field public static final FILE_TYPE_PNG:I = 0x68

.field public static final FILE_TYPE_PPT:I = 0xd4

.field public static final FILE_TYPE_PPTM:I = 0xeb

.field public static final FILE_TYPE_PPTX:I = 0xea

.field public static final FILE_TYPE_QCP:I = 0xd9

.field public static final FILE_TYPE_RAF:I = 0x73

.field public static final FILE_TYPE_RM:I = 0x24

.field public static final FILE_TYPE_RMVB:I = 0x21

.field public static final FILE_TYPE_RTTTL:I = 0xf

.field public static final FILE_TYPE_RW2:I = 0x71

.field public static final FILE_TYPE_SMF:I = 0x10

.field public static final FILE_TYPE_SRW:I = 0x75

.field public static final FILE_TYPE_TS:I = 0x1d

.field public static final FILE_TYPE_TXT:I = 0xce

.field public static final FILE_TYPE_WAV:I = 0x4

.field public static final FILE_TYPE_WBMP:I = 0x6a

.field public static final FILE_TYPE_WEBM:I = 0x1c

.field public static final FILE_TYPE_WEBP:I = 0x6b

.field public static final FILE_TYPE_WMA:I = 0x7

.field public static final FILE_TYPE_WMV:I = 0x1f

.field public static final FILE_TYPE_WPL:I = 0xca

.field public static final FILE_TYPE_WPS:I = 0xe2

.field public static final FILE_TYPE_XLS:I = 0xd3

.field public static final FILE_TYPE_XLSB:I = 0xe9

.field public static final FILE_TYPE_XLSM:I = 0xe8

.field public static final FILE_TYPE_XLSX:I = 0xe5

.field public static final FILE_TYPE_XMF:I = 0xe

.field public static final FILE_TYPE_ZIP:I = 0xd6

.field public static final sFileTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnubia/media/NubiaFileType;->sFileTypeMap:Ljava/util/HashMap;

    .line 130
    const-string v0, "MP3"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    const-string v0, "MPGA"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "M4A"

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 133
    const-string v0, "WAV"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v0, "AMR"

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    const-string v0, "AWB"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const-string v0, "WMA"

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 137
    const-string v0, "OGG"

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    const-string v0, "OGA"

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 139
    const-string v0, "AAC"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    const-string v0, "MKA"

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 142
    const-string v0, "MID"

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 143
    const-string v0, "MIDI"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 144
    const-string v0, "XMF"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 145
    const-string v0, "RTTTL"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v0, "SMF"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    const-string v0, "IMY"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v0, "RTX"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 149
    const-string v0, "OTA"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    const-string v0, "MXMF"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 152
    const-string v0, "MPEG"

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v0, "MPG"

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    const-string v0, "MP4"

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v0, "M4V"

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v0, "MOV"

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v0, "3GP"

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v0, "3GPP"

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 160
    const-string v0, "3G2"

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 161
    const-string v0, "3GPP2"

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 162
    const-string v0, "MKV"

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    const-string v0, "WEBM"

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 164
    const-string v0, "TS"

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 165
    const-string v0, "AVI"

    const/16 v1, 0x1e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    const-string v0, "WMV"

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 168
    const-string v0, "ASF"

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v0, "RMVB"

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 171
    const-string v0, "FLV"

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    const-string v0, "F4V"

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 173
    const-string v0, "RM"

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 174
    const-string v0, "M2TS"

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 177
    const-string v0, "JPG"

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v0, "JPEG"

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 179
    const-string v0, "GIF"

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 180
    const-string v0, "PNG"

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 181
    const-string v0, "BMP"

    const/16 v1, 0x69

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    const-string v0, "WBMP"

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 183
    const-string v0, "WEBP"

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 185
    const-string v0, "DNG"

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 186
    const-string v0, "CR2"

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 187
    const-string v0, "NEF"

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 188
    const-string v0, "NRW"

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 189
    const-string v0, "ARW"

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 190
    const-string v0, "RW2"

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 191
    const-string v0, "ORF"

    const/16 v1, 0x72

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v0, "RAF"

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 193
    const-string v0, "PEF"

    const/16 v1, 0x74

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v0, "SRW"

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v0, "M3U"

    const/16 v1, 0xc8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v2}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v0, "M3U"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 198
    const-string v0, "PLS"

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    const-string v0, "WPL"

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v0, "M3U8"

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 202
    const-string v0, "FL"

    const/16 v1, 0xcc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 203
    const-string v0, "DCF"

    const/16 v1, 0xcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string v0, "TXT"

    const/16 v1, 0xce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    const-string v0, "HTM"

    const/16 v1, 0xcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 207
    const-string v0, "HTML"

    const/16 v1, 0xd0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 208
    const-string v0, "PDF"

    const/16 v1, 0xd1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 209
    const-string v0, "DOC"

    const/16 v1, 0xd2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 210
    const-string v0, "XLS"

    const/16 v1, 0xd3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 211
    const-string v0, "PPT"

    const/16 v1, 0xd4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 212
    const-string v0, "FLAC"

    const/16 v1, 0xd5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 213
    const-string v0, "ZIP"

    const/16 v1, 0xd6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 214
    const-string v0, "DIVX"

    const/16 v1, 0xd7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 215
    const-string v0, "MPD"

    const/16 v1, 0xd8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 216
    const-string v0, "QCP"

    const/16 v1, 0xd9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 217
    const-string v0, "AC3"

    const/16 v1, 0xda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 218
    const-string v0, "EC3"

    const/16 v1, 0xdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    const-string v0, "AIF"

    const/16 v1, 0xdc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    const-string v0, "AIFF"

    const/16 v1, 0xdd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v0, "APE"

    const/16 v1, 0xde

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    const-string v0, "DSF"

    const/16 v1, 0xdf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 223
    const-string v0, "DFF"

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    const-string v0, "DSD"

    const/16 v1, 0xe1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 225
    const-string v0, "WPS"

    const/16 v1, 0xe2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 226
    const-string v0, "DOT"

    const/16 v1, 0xe3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 227
    const-string v0, "DOTX"

    const/16 v1, 0xe4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 228
    const-string v0, "XLSX"

    const/16 v1, 0xe5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 229
    const-string v0, "DOCX"

    const/16 v1, 0xe6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 230
    const-string v0, "DOCM"

    const/16 v1, 0xe7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    const-string v0, "XLSM"

    const/16 v1, 0xe8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 232
    const-string v0, "XLSB"

    const/16 v1, 0xe9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 233
    const-string v0, "PPTX"

    const/16 v1, 0xea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    const-string v0, "PPTM"

    const/16 v1, 0xeb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 235
    const-string v0, "JSON"

    const/16 v1, 0xec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lnubia/media/NubiaFileType;->addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 237
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addNubiaFileType(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "extension"    # Ljava/lang/String;
    .param p1, "fileType"    # Ljava/lang/Integer;

    .line 25
    sget-object v0, Lnubia/media/NubiaFileType;->sFileTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    return-void
.end method

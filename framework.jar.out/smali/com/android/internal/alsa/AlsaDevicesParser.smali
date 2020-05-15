.class public Lcom/android/internal/alsa/AlsaDevicesParser;
.super Ljava/lang/Object;
.source "AlsaDevicesParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = false

.field public static final SCANSTATUS_EMPTY:I = 0x2

.field public static final SCANSTATUS_FAIL:I = 0x1

.field public static final SCANSTATUS_NOTSCANNED:I = -0x1

.field public static final SCANSTATUS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AlsaDevicesParser"

.field private static final kDevicesFilePath:Ljava/lang/String; = "/proc/asound/devices"

.field private static final kEndIndex_CardNum:I = 0x8

.field private static final kEndIndex_DeviceNum:I = 0xb

.field private static final kIndex_CardDeviceField:I = 0x5

.field private static final kStartIndex_CardNum:I = 0x6

.field private static final kStartIndex_DeviceNum:I = 0x9

.field private static final kStartIndex_Type:I = 0xe

.field private static mTokenizer:Lcom/android/internal/alsa/LineTokenizer;


# instance fields
.field private final mDeviceRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mHasCaptureDevices:Z

.field private mHasMIDIDevices:Z

.field private mHasPlaybackDevices:Z

.field private mScanStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    new-instance v0, Lcom/android/internal/alsa/LineTokenizer;

    const-string v1, " :[]-"

    invoke-direct {v0, v1}, Lcom/android/internal/alsa/LineTokenizer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    .line 49
    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    .line 198
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    .line 200
    return-void
.end method

.method private Log(Ljava/lang/String;)V
    .locals 0
    .param p1, "heading"    # Ljava/lang/String;

    .line 306
    return-void
.end method

.method static synthetic access$000()Lcom/android/internal/alsa/LineTokenizer;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/internal/alsa/AlsaDevicesParser;->mTokenizer:Lcom/android/internal/alsa/LineTokenizer;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasMIDIDevices:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasCaptureDevices:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/internal/alsa/AlsaDevicesParser;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/alsa/AlsaDevicesParser;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mHasPlaybackDevices:Z

    return p1
.end method

.method private isLineDeviceRecord(Ljava/lang/String;)Z
    .locals 2
    .param p1, "line"    # Ljava/lang/String;

    .line 249
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDefaultDeviceNum(I)I
    .locals 1
    .param p1, "card"    # I

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getScanStatus()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    return v0
.end method

.method public hasCaptureDevices(I)Z
    .locals 3
    .param p1, "card"    # I

    .line 225
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 226
    .local v1, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    if-nez v2, :cond_0

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    .end local v1    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :cond_0
    goto :goto_0

    .line 232
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasMIDIDevices(I)Z
    .locals 4
    .param p1, "card"    # I

    .line 236
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 237
    .local v1, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 239
    const/4 v0, 0x1

    return v0

    .line 241
    .end local v1    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :cond_0
    goto :goto_0

    .line 242
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasPlaybackDevices(I)Z
    .locals 4
    .param p1, "card"    # I

    .line 214
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    .line 215
    .local v1, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mCardNum:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceType:I

    if-nez v2, :cond_0

    iget v2, v1, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->mDeviceDir:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 218
    return v3

    .line 220
    .end local v1    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    :cond_0
    goto :goto_0

    .line 221
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public scan()I
    .locals 8

    .line 257
    iget-object v0, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 259
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/asound/devices"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "devicesFile":Ljava/io/File;
    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 262
    .local v2, "reader":Ljava/io/FileReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 263
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    const-string v4, ""

    .line 264
    .local v4, "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_1

    .line 265
    invoke-direct {p0, v4}, Lcom/android/internal/alsa/AlsaDevicesParser;->isLineDeviceRecord(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 266
    new-instance v5, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;

    invoke-direct {v5, p0}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;-><init>(Lcom/android/internal/alsa/AlsaDevicesParser;)V

    .line 267
    .local v5, "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    invoke-virtual {v5, v4}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->parse(Ljava/lang/String;)Z

    .line 268
    const-string v6, "AlsaDevicesParser"

    invoke-virtual {v5}, Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;->textFormat()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v6, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    .end local v5    # "deviceRecord":Lcom/android/internal/alsa/AlsaDevicesParser$AlsaDeviceRecord;
    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 274
    iget-object v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mDeviceRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 275
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    goto :goto_1

    .line 277
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "reader":Ljava/io/FileReader;
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    goto :goto_1

    .line 282
    :catch_0
    move-exception v2

    .line 283
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 284
    iput v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 279
    :catch_1
    move-exception v2

    .line 280
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 281
    iput v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    .line 285
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    nop

    .line 289
    :goto_2
    iget v1, p0, Lcom/android/internal/alsa/AlsaDevicesParser;->mScanStatus:I

    return v1
.end method

.class public Lcom/android/server/wifi/WifiConfigStore;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiConfigStore$StoreData;,
        Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    }
.end annotation


# static fields
.field private static final BUFFERED_WRITE_ALARM_INTERVAL_MS:I = 0x2710

.field public static final BUFFERED_WRITE_ALARM_TAG:Ljava/lang/String; = "WriteBufferAlarm"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CURRENT_CONFIG_STORE_DATA_VERSION:I = 0x1

.field private static final INITIAL_CONFIG_STORE_DATA_VERSION:I = 0x1

.field private static final STORE_DIRECTORY_NAME:Ljava/lang/String; = "wifi"

.field private static final STORE_FILE_NAME:Ljava/lang/String; = "WifiConfigStore.xml"

.field private static final TAG:Ljava/lang/String; = "WifiConfigStore"

.field private static final XML_TAG_DOCUMENT_HEADER:Ljava/lang/String; = "WifiConfigStoreData"

.field private static final XML_TAG_VERSION:Ljava/lang/String; = "Version"


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mBufferedWritePending:Z

.field private final mClock:Lcom/android/server/wifi/Clock;

.field private final mEventHandler:Landroid/os/Handler;

.field private mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

.field private final mStoreDataList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wifi/WifiConfigStore$StoreData;",
            ">;"
        }
    .end annotation
.end field

.field private mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

.field private mVerboseLoggingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "clock"    # Lcom/android/server/wifi/Clock;
    .param p4, "sharedStore"    # Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mVerboseLoggingEnabled:Z

    .line 117
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    .line 121
    new-instance v0, Lcom/android/server/wifi/WifiConfigStore$1;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiConfigStore$1;-><init>(Lcom/android/server/wifi/WifiConfigStore;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 151
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mEventHandler:Landroid/os/Handler;

    .line 153
    iput-object p3, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    .line 157
    iput-object p4, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 161
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wifi/WifiConfigStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeBufferedData()V

    return-void
.end method

.method private static createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 4
    .param p0, "storeBaseDir"    # Ljava/io/File;

    .line 194
    new-instance v0, Ljava/io/File;

    const-string v1, "wifi"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 195
    .local v0, "storeDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    const-string v1, "WifiConfigStore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create store directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    new-instance v1, Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "WifiConfigStore.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;-><init>(Ljava/io/File;)V

    return-object v1
.end method

.method public static createSharedFile()Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 1

    .line 209
    invoke-static {}, Landroid/os/Environment;->getDataMiscDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v0

    return-object v0
.end method

.method public static createUserFile(I)Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .locals 1
    .param p0, "userId"    # I

    .line 220
    invoke-static {p0}, Landroid/os/Environment;->getDataMiscCeDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->createFile(Ljava/io/File;)Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    move-result-object v0

    return-object v0
.end method

.method private deserializeData([BZ)V
    .locals 10
    .param p1, "dataBytes"    # [B
    .param p2, "shareData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    if-nez p1, :cond_0

    .line 420
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/wifi/WifiConfigStore;->indicateNoDataForStoreDatas(Ljava/util/Collection;Z)V

    .line 421
    return-void

    .line 423
    :cond_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 424
    .local v0, "in":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 425
    .local v1, "inputStream":Ljava/io/ByteArrayInputStream;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 428
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 429
    .local v2, "rootTagDepth":I
    invoke-static {v0}, Lcom/android/server/wifi/WifiConfigStore;->parseDocumentStartAndVersionFromXml(Lorg/xmlpull/v1/XmlPullParser;)I

    .line 431
    new-array v3, v3, [Ljava/lang/String;

    .line 432
    .local v3, "headerName":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 433
    .local v4, "storeDatasInvoked":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    :goto_0
    invoke-static {v0, v3, v2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 434
    iget-object v5, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v7, v3, v6

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    .line 435
    .local v5, "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    if-eqz v5, :cond_1

    .line 438
    add-int/lit8 v6, v2, 0x1

    invoke-interface {v5, v0, v6, p2}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V

    .line 439
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    .end local v5    # "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    goto :goto_0

    .line 436
    .restart local v5    # "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    :cond_1
    new-instance v7, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown store data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 443
    .end local v5    # "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    :cond_2
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 444
    .local v5, "storeDatasNotInvoked":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    invoke-interface {v5, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 445
    invoke-direct {p0, v5, p2}, Lcom/android/server/wifi/WifiConfigStore;->indicateNoDataForStoreDatas(Ljava/util/Collection;Z)V

    .line 446
    return-void
.end method

.method private indicateNoDataForStoreDatas(Ljava/util/Collection;Z)V
    .locals 4
    .param p2, "shareData"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/server/wifi/WifiConfigStore$StoreData;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 404
    .local p1, "storeDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    .line 405
    .local v1, "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3, p2}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V

    .line 406
    .end local v1    # "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    goto :goto_0

    .line 407
    :cond_0
    return-void
.end method

.method private static parseDocumentStartAndVersionFromXml(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 4
    .param p0, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 457
    const-string v0, "WifiConfigStoreData"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->gotoDocumentStart(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 458
    const-string v0, "Version"

    invoke-static {p0, v0}, Lcom/android/server/wifi/util/XmlUtil;->readNextValueWithName(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 459
    .local v0, "version":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    if-gt v0, v1, :cond_0

    .line 463
    return v0

    .line 461
    :cond_0
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid version of data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private resetStoreData(Z)V
    .locals 3
    .param p1, "shareData"    # Z

    .line 396
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 397
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    invoke-interface {v2, p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->resetData(Z)V

    .line 398
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    goto :goto_0

    .line 399
    :cond_0
    return-void
.end method

.method private serializeData(Z)[B
    .locals 7
    .param p1, "shareData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v0}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 278
    .local v0, "out":Lorg/xmlpull/v1/XmlSerializer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 279
    .local v1, "outputStream":Ljava/io/ByteArrayOutputStream;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 281
    const-string v2, "WifiConfigStoreData"

    invoke-static {v0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 282
    const-string v2, "Version"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 284
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 285
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 286
    .local v4, "tag":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiConfigStore$StoreData;

    .line 289
    .local v5, "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    if-eqz p1, :cond_0

    invoke-interface {v5}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->supportShareData()Z

    move-result v6

    if-nez v6, :cond_0

    .line 290
    goto :goto_0

    .line 292
    :cond_0
    invoke-static {v0, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 293
    invoke-interface {v5, v0, p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V

    .line 294
    invoke-static {v0, v4}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 295
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/wifi/WifiConfigStore$StoreData;>;"
    .end local v4    # "tag":Ljava/lang/String;
    .end local v5    # "storeData":Lcom/android/server/wifi/WifiConfigStore$StoreData;
    goto :goto_0

    .line 296
    :cond_1
    const-string v2, "WifiConfigStoreData"

    invoke-static {v0, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeDocumentEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method private startBufferedWriteAlarm()V
    .locals 8

    .line 305
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    if-nez v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    .line 307
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    const-string v5, "WriteBufferAlarm"

    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v7, p0, Lcom/android/server/wifi/WifiConfigStore;->mEventHandler:Landroid/os/Handler;

    .line 306
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    .line 311
    :cond_0
    return-void
.end method

.method private stopBufferedWriteAlarm()V
    .locals 2

    .line 317
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWriteListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 319
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mBufferedWritePending:Z

    .line 321
    :cond_0
    return-void
.end method

.method private writeBufferedData()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 328
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->stopBufferedWriteAlarm()V

    .line 330
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v0

    .line 331
    .local v0, "writeStartTime":J
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->writeBufferedRawData()V

    .line 332
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v2, :cond_0

    .line 333
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->writeBufferedRawData()V

    .line 335
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v2}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 337
    .local v2, "writeTime":J
    const-string v4, "WifiConfigStore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Writing to stores completed in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void
.end method


# virtual methods
.method public areStoresPresent()Z
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public enableVerboseLogging(Z)V
    .locals 0
    .param p1, "verbose"    # Z

    .line 227
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mVerboseLoggingEnabled:Z

    .line 228
    return-void
.end method

.method public read()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 347
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 349
    invoke-direct {p0, v2}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v3

    .line 353
    .local v3, "readStartTime":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v1

    .line 354
    .local v1, "sharedDataBytes":[B
    const/4 v5, 0x0

    .line 355
    .local v5, "userDataBytes":[B
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v6, :cond_1

    .line 356
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v5

    .line 358
    :cond_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v6}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    .line 359
    .local v6, "readTime":J
    const-string v8, "WifiConfigStore"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reading from stores completed in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " ms."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-direct {p0, v1, v0}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    .line 361
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v0, :cond_2

    .line 362
    invoke-direct {p0, v5, v2}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    .line 364
    :cond_2
    return-void
.end method

.method public registerStoreData(Lcom/android/server/wifi/WifiConfigStore$StoreData;)Z
    .locals 2
    .param p1, "storeData"    # Lcom/android/server/wifi/WifiConfigStore$StoreData;

    .line 176
    if-nez p1, :cond_0

    .line 177
    const-string v0, "WifiConfigStore"

    const-string v1, "Unable to register null store data"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    return v0

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiConfigStore;->mStoreDataList:Ljava/util/Map;

    invoke-interface {p1}, Lcom/android/server/wifi/WifiConfigStore$StoreData;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const/4 v0, 0x1

    return v0
.end method

.method public setUserStore(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 0
    .param p1, "userStore"    # Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 164
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 165
    return-void
.end method

.method public switchUserStoreAndRead(Lcom/android/server/wifi/WifiConfigStore$StoreFile;)V
    .locals 9
    .param p1, "userStore"    # Lcom/android/server/wifi/WifiConfigStore$StoreFile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->resetStoreData(Z)V

    .line 379
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->stopBufferedWriteAlarm()V

    .line 380
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    .line 383
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v1}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v1

    .line 384
    .local v1, "readStartTime":J
    iget-object v3, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->readRawData()[B

    move-result-object v3

    .line 385
    .local v3, "userDataBytes":[B
    iget-object v4, p0, Lcom/android/server/wifi/WifiConfigStore;->mClock:Lcom/android/server/wifi/Clock;

    invoke-virtual {v4}, Lcom/android/server/wifi/Clock;->getElapsedSinceBootMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    .line 386
    .local v4, "readTime":J
    const-string v6, "WifiConfigStore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Reading from user store completed in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-direct {p0, v3, v0}, Lcom/android/server/wifi/WifiConfigStore;->deserializeData([BZ)V

    .line 388
    return-void
.end method

.method public write(Z)V
    .locals 3
    .param p1, "forceSync"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiConfigStore;->serializeData(Z)[B

    move-result-object v0

    .line 253
    .local v0, "sharedDataBytes":[B
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mSharedStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->storeRawDataToWrite([B)V

    .line 254
    iget-object v1, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    if-eqz v1, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wifi/WifiConfigStore;->serializeData(Z)[B

    move-result-object v1

    .line 256
    .local v1, "userDataBytes":[B
    iget-object v2, p0, Lcom/android/server/wifi/WifiConfigStore;->mUserStore:Lcom/android/server/wifi/WifiConfigStore$StoreFile;

    invoke-virtual {v2, v1}, Lcom/android/server/wifi/WifiConfigStore$StoreFile;->storeRawDataToWrite([B)V

    .line 261
    .end local v1    # "userDataBytes":[B
    :cond_0
    if-eqz p1, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->writeBufferedData()V

    goto :goto_0

    .line 264
    :cond_1
    invoke-direct {p0}, Lcom/android/server/wifi/WifiConfigStore;->startBufferedWriteAlarm()V

    .line 266
    :goto_0
    return-void
.end method

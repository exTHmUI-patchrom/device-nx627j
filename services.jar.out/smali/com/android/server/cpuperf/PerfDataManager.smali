.class public Lcom/android/server/cpuperf/PerfDataManager;
.super Ljava/lang/Object;
.source "PerfDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;
    }
.end annotation


# static fields
.field private static final BASE_DATA_PATH:Ljava/lang/String;

.field private static final BASE_TEXT_FILE:Ljava/lang/String;

.field private static final DATA_PATH:Ljava/lang/String;

.field private static final DEST_PATH:Ljava/lang/String;

.field private static final NUBIA_PERFORMANCE_THERMAL_FILE:Ljava/lang/String; = "nubia_performance_thermal"

.field private static final NUBIA_PERFORMANCE_THERMAL_TEMP_FILE:Ljava/lang/String; = "nubia_performance_thermal.tmp"

.field private static final TAG:Ljava/lang/String; = "PerfDataManager"

.field private static final UPDATE_PATH:Ljava/lang/String;


# instance fields
.field private mService:Lcom/android/server/BSPApplicationManagerService;

.field private mUpgradeConfig:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/system"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerfDataManager;->BASE_DATA_PATH:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/cpuperf/PerfDataManager;->BASE_DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/nubia_performance_thermal.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerfDataManager;->BASE_TEXT_FILE:Ljava/lang/String;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/cpuperf/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nubia_performance_thermal.tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerfDataManager;->UPDATE_PATH:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/cpuperf/PerfDataManager;->DATA_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "nubia_performance_thermal"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cpuperf/PerfDataManager;->DEST_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BSPApplicationManagerService;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/BSPApplicationManagerService;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cpuperf/PerfDataManager;->mUpgradeConfig:Z

    .line 50
    invoke-direct {p0}, Lcom/android/server/cpuperf/PerfDataManager;->initData()Z

    .line 51
    new-instance v1, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;-><init>(Lcom/android/server/cpuperf/PerfDataManager;Lcom/android/server/cpuperf/PerfDataManager$1;)V

    .line 52
    .local v1, "receiver":Lcom/android/server/cpuperf/PerfDataManager$UpdateConfigurationReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 53
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string v4, "cn.nubia.jobdispatcher.broadcast"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 54
    const-string v4, "dispatcher"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 55
    const-string v4, "com.android.server.cpuperf.UpdateConfigurationReceiver"

    invoke-virtual {v3, v4, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "intentFilter1":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1, v1, v3, v2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    invoke-virtual {p1, v1, v0, v2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cpuperf/PerfDataManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerfDataManager;

    .line 35
    iget-boolean v0, p0, Lcom/android/server/cpuperf/PerfDataManager;->mUpgradeConfig:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/cpuperf/PerfDataManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerfDataManager;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/server/cpuperf/PerfDataManager;->mUpgradeConfig:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/cpuperf/PerfDataManager;)Lcom/android/server/BSPApplicationManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerfDataManager;

    .line 35
    iget-object v0, p0, Lcom/android/server/cpuperf/PerfDataManager;->mService:Lcom/android/server/BSPApplicationManagerService;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 35
    sget-object v0, Lcom/android/server/cpuperf/PerfDataManager;->UPDATE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/cpuperf/PerfDataManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cpuperf/PerfDataManager;

    .line 35
    invoke-direct {p0}, Lcom/android/server/cpuperf/PerfDataManager;->initData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/io/Closeable;)V
    .locals 0
    .param p0, "x0"    # Ljava/io/Closeable;

    .line 35
    invoke-static {p0}, Lcom/android/server/cpuperf/PerfDataManager;->closeQuietly(Ljava/io/Closeable;)V

    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 168
    if-eqz p0, :cond_0

    .line 170
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 175
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method private initData()Z
    .locals 4

    .line 66
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/cpuperf/PerfDataManager;->UPDATE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "tmpFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/cpuperf/PerfDataManager;->UPDATE_PATH:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/cpuperf/PerfDataManager;->validateXmlFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 68
    const-string v1, "PerfDataManager"

    const-string/jumbo v2, "initData: There is an upgrade configuration of preformance in the system, and the validating result is pass!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/cpuperf/PerfDataManager;->DEST_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    const-string v1, "PerfDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/cpuperf/PerfDataManager;->UPDATE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " renameTo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/cpuperf/PerfDataManager;->DEST_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " fail!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 72
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "PerfDataManager"

    const-string/jumbo v2, "initData: The upgrade configuration file is broken!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private validateXmlFile(Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;

    .line 134
    const/4 v0, 0x0

    .line 135
    .local v0, "is":Ljava/io/InputStream;
    const/4 v1, 0x0

    move v2, v1

    .line 137
    .local v2, "result":Z
    :try_start_0
    invoke-static {p1}, Landroid/util/NubiaPerfConfig;->readPerformaceConfigXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, "configContent":Ljava/lang/String;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v4

    .line 140
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 141
    .local v4, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 142
    .local v5, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 143
    .local v6, "document":Lorg/w3c/dom/Document;
    const-string/jumbo v7, "platform"

    invoke-interface {v6, v7}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 144
    .local v7, "platformList":Lorg/w3c/dom/NodeList;
    invoke-interface {v7, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Element;

    .line 145
    .local v1, "platform":Lorg/w3c/dom/Element;
    const-string/jumbo v8, "name"

    invoke-interface {v1, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "version":Ljava/lang/String;
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 147
    const/4 v2, 0x1

    goto :goto_0

    .line 149
    :cond_0
    const-string v9, "PerfDataManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validateXmlFile: the configuration file does not apply to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", it apply to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "platform":Lorg/w3c/dom/Element;
    .end local v3    # "configContent":Ljava/lang/String;
    .end local v4    # "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v5    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "document":Lorg/w3c/dom/Document;
    .end local v7    # "platformList":Lorg/w3c/dom/NodeList;
    .end local v8    # "version":Ljava/lang/String;
    goto :goto_0

    .line 161
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 159
    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 157
    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 154
    :catch_2
    move-exception v1

    .line 155
    .local v1, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v1}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 155
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    goto :goto_0

    .line 152
    :catch_3
    move-exception v1

    .line 153
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v1}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    .end local v1    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->closeQuietly(Ljava/io/Closeable;)V

    .line 162
    nop

    .line 164
    return v2

    .line 161
    :goto_1
    invoke-static {v0}, Lcom/android/server/cpuperf/PerfDataManager;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

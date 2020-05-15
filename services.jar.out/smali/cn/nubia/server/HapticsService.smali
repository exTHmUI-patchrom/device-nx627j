.class public Lcn/nubia/server/HapticsService;
.super Lnubia/os/IHapticsService$Stub;
.source "HapticsService.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final HAPTIC_MODE_AUDIO2HAPTIC:I = 0x1

.field private static final HAPTIC_MODE_IDLE:I = 0x0

.field private static final HAPTIC_MODE_RING:I = 0x8

.field private static final HAPTIC_MODE_RTP_PLAYBACK:I = 0x4

.field private static final HAPTIC_MODE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final HAPTIC_RING_CONFIG:Ljava/lang/String; = "/system/etc/RingHaptics.xml"

.field private static final HAPTIC_RING_SILENCE:Ljava/lang/String; = "0"

.field private static final SW_STATE_AUDIO2HAPTIC:I = 0x1

.field private static final SW_STATE_IDLE:I = 0x0

.field private static final SW_STATE_RTP_PLAYBACK:I = 0x4

.field private static final SW_STATE_SEQUENCE_PLAYBACK:I = 0x2

.field private static final TAG:Ljava/lang/String; = "HapticsService"

.field private static final XML_HAPTICS:Ljava/lang/String; = "Haptics"

.field private static final XML_HAPTICS_NAME:Ljava/lang/String; = "name"

.field private static final XML_HAPTICS_SEQ:Ljava/lang/String; = "seq"


# instance fields
.field private mA2H_str:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mFeedbackEnabled:I

.field private mHapticWhenRing:I

.field private mHapticsLockScreen:I

.field private mHapticsMode:I

.field private mHapticsMultitouch:I

.field private mHapticsRepeat:I

.field private mHapticsScrolling:I

.field private mHapticsStatus:I

.field private mHapticsStatusObserver:Landroid/os/UEventObserver;

.field private mHapticsStatusPrev:I

.field private mHapticsThemeDialpad:I

.field private mHapticsThemeGallery:I

.field private mHapticsThemeLPress:I

.field private mHapticsThemeLauncher:I

.field private mHapticsThemeRotate:I

.field private mHapticsThemeSIP:I

.field private mHapticsThemeVK:I

.field private mRTPSeq:[B

.field private mRTPSeqLen:I

.field private mRingHapticsDefault:I

.field private mRingHapticsName:[Ljava/lang/String;

.field private mRingHapticsSeq:[Ljava/lang/String;

.field private mSeq:[B

.field private mUnLockEffect:[B

.field private final resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 136
    invoke-direct {p0}, Lnubia/os/IHapticsService$Stub;-><init>()V

    .line 86
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    .line 87
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    .line 88
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    .line 89
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    .line 90
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    .line 91
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    .line 92
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    .line 93
    const/16 v0, 0x18

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsLockScreen:I

    .line 94
    const/4 v0, 0x6

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    .line 95
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    .line 98
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    .line 99
    const/16 v1, 0x8

    new-array v2, v1, [B

    iput-object v2, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    .line 100
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    .line 101
    iput v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 102
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    .line 103
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    .line 104
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsRepeat:I

    .line 105
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 106
    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mUnLockEffect:[B

    .line 118
    new-instance v0, Lcn/nubia/server/HapticsService$1;

    invoke-direct {v0, p0}, Lcn/nubia/server/HapticsService$1;-><init>(Lcn/nubia/server/HapticsService;)V

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    .line 137
    iput-object p1, p0, Lcn/nubia/server/HapticsService;->mContext:Landroid/content/Context;

    .line 138
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    .line 139
    return-void

    nop

    :array_0
    .array-data 1
        0x5ct
        0x77t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private GetRingHapticsFromConfig()V
    .locals 14

    .line 597
    const/4 v0, 0x0

    .line 598
    .local v0, "inputStream":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 599
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v2, 0x0

    .line 600
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/etc/RingHaptics.xml"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v3, "config_file":Ljava/io/File;
    const/4 v4, 0x0

    .line 603
    .local v4, "document":Lorg/w3c/dom/Document;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 604
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 607
    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 611
    goto :goto_0

    .line 608
    :catch_0
    move-exception v5

    .line 610
    .local v5, "e":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v5}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    .line 614
    .end local v5    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_0
    :try_start_1
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v5

    .line 618
    goto :goto_1

    .line 615
    :catch_1
    move-exception v5

    .line 617
    .local v5, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 621
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 628
    :goto_2
    goto :goto_3

    .line 625
    :catch_2
    move-exception v5

    .line 627
    .local v5, "e1":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 627
    .end local v5    # "e1":Ljava/io/IOException;
    goto :goto_3

    .line 622
    :catch_3
    move-exception v5

    .line 624
    .local v5, "e1":Lorg/xml/sax/SAXException;
    invoke-virtual {v5}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 624
    .end local v5    # "e1":Lorg/xml/sax/SAXException;
    goto :goto_2

    .line 630
    :goto_3
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v5

    .line 631
    .local v5, "root":Lorg/w3c/dom/Element;
    const-string v6, "Haptics"

    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 632
    .local v6, "nl_haptics":Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    .line 633
    .local v7, "haptics_count":I
    if-nez v7, :cond_0

    .line 634
    return-void

    .line 636
    :cond_0
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, p0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    .line 637
    new-array v8, v7, [Ljava/lang/String;

    iput-object v8, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    .line 639
    const/4 v8, 0x0

    move v9, v8

    .line 639
    .local v9, "i":I
    :goto_4
    if-ge v9, v7, :cond_1

    .line 640
    invoke-interface {v6, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 641
    .local v10, "em_haptics":Lorg/w3c/dom/Element;
    iget-object v11, p0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    const-string/jumbo v12, "name"

    invoke-interface {v10, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    .line 643
    const-string/jumbo v11, "seq"

    invoke-interface {v10, v11}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v11

    invoke-interface {v11, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    check-cast v11, Lorg/w3c/dom/Element;

    .line 644
    .local v11, "em_seq":Lorg/w3c/dom/Element;
    iget-object v12, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    invoke-interface {v11}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v13

    invoke-interface {v13}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v12, v9

    .line 639
    .end local v10    # "em_haptics":Lorg/w3c/dom/Element;
    .end local v11    # "em_seq":Lorg/w3c/dom/Element;
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 649
    .end local v9    # "i":I
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 653
    goto :goto_5

    .line 650
    :catch_4
    move-exception v8

    .line 652
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 654
    .end local v5    # "root":Lorg/w3c/dom/Element;
    .end local v6    # "nl_haptics":Lorg/w3c/dom/NodeList;
    .end local v7    # "haptics_count":I
    .end local v8    # "e":Ljava/io/IOException;
    :goto_5
    goto :goto_6

    .line 655
    :cond_2
    const-string v5, "HapticsService"

    const-string v6, "/system/etc/RingHaptics.xml is missing"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :goto_6
    return-void
.end method

.method private InitHapticsA2HSetting()V
    .locals 8

    .line 182
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_A2H_data"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 184
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/etc/haptics_A2H.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, "a2h_f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 186
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    .line 187
    .local v2, "filelen":I
    if-lez v2, :cond_0

    .line 188
    new-array v3, v2, [C

    .line 190
    .local v3, "a2hBuf":[C
    :try_start_0
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 191
    .local v4, "bufReader":Ljava/io/BufferedReader;
    invoke-virtual {v4, v3, v1, v2}, Ljava/io/BufferedReader;->read([CII)I

    .line 192
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .end local v4    # "bufReader":Ljava/io/BufferedReader;
    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    .line 194
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "HapticsService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "A2H BufferedReader: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([C)V

    iput-object v4, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 197
    .end local v3    # "a2hBuf":[C
    goto :goto_1

    .line 198
    :cond_0
    const-string v3, "HapticsService"

    const-string v4, "A2H a2h_f length ZERO"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 201
    .end local v2    # "filelen":I
    :goto_1
    goto :goto_2

    .line 202
    :cond_1
    const-string v2, "HapticsService"

    const-string v3, "A2H a2h_f is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    .line 206
    :goto_2
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v3, "haptic_A2H_data"

    iget-object v4, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 209
    .end local v0    # "a2h_f":Ljava/io/File;
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_A2H_data"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcn/nubia/server/HapticsService$2;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/HapticsService$2;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 217
    return-void
.end method

.method private InitHapticsEffectSettings(Ljava/lang/String;I)V
    .locals 6
    .param p1, "setting_str"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 247
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 248
    .local v0, "setting":I
    if-nez v0, :cond_0

    .line 249
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 250
    move v0, p2

    .line 253
    :cond_0
    const-string v2, "data_haptictheme_SIP"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 254
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    goto :goto_0

    .line 255
    :cond_1
    const-string v2, "data_haptictheme_dialpad"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 256
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    goto :goto_0

    .line 257
    :cond_2
    const-string v2, "data_haptictheme_launcher"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 258
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    goto :goto_0

    .line 259
    :cond_3
    const-string v2, "data_haptictheme_longpress"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 260
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    goto :goto_0

    .line 261
    :cond_4
    const-string v2, "data_haptictheme_virtualkey"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 262
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    goto :goto_0

    .line 263
    :cond_5
    const-string v2, "data_haptictheme_rotate"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 264
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    goto :goto_0

    .line 265
    :cond_6
    const-string v2, "data_haptictheme_gallery"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 266
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    goto :goto_0

    .line 267
    :cond_7
    const-string v2, "data_haptictheme_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 268
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    goto :goto_0

    .line 269
    :cond_8
    const-string v2, "data_haptictheme_multi_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 270
    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    .line 273
    :cond_9
    :goto_0
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcn/nubia/server/HapticsService$5;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5, p1}, Lcn/nubia/server/HapticsService$5;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    return-void
.end method

.method private InitHapticsRingSetting()V
    .locals 5

    .line 220
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->GetRingHapticsFromConfig()V

    .line 221
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    .line 222
    iget v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    iget v3, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    :cond_0
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_vibrate_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcn/nubia/server/HapticsService$3;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/HapticsService$3;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 235
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    .line 236
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcn/nubia/server/HapticsService$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/HapticsService$4;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 244
    return-void
.end method

.method static native JNI_initialize()V
.end method

.method static native JNI_playEffect(I)V
.end method

.method static native JNI_playEffectSequence([BI)V
.end method

.method static native JNI_playPatternRTP(IIII)V
.end method

.method static native JNI_playRTPSequence([BI)V
.end method

.method static native JNI_playTimedEffect(I)V
.end method

.method static native JNI_setAudioHapticEnabled(Z)V
.end method

.method static native JNI_stopPlayingEffect()V
.end method

.method static native JNI_terminate()V
.end method

.method private LookupHapticValue(I)I
    .locals 1
    .param p1, "effectID"    # I

    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "value":I
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 169
    :pswitch_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    .line 170
    goto :goto_0

    .line 172
    :pswitch_2
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    .line 173
    goto :goto_0

    .line 166
    :pswitch_3
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsLockScreen:I

    .line 167
    goto :goto_0

    .line 163
    :pswitch_4
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    .line 164
    goto :goto_0

    .line 160
    :pswitch_5
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    .line 161
    goto :goto_0

    .line 157
    :pswitch_6
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    .line 158
    goto :goto_0

    .line 154
    :pswitch_7
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    .line 155
    goto :goto_0

    .line 151
    :pswitch_8
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    .line 152
    goto :goto_0

    .line 148
    :pswitch_9
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    .line 149
    goto :goto_0

    .line 145
    :pswitch_a
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    .line 146
    nop

    .line 178
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$000(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .line 59
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    return v0
.end method

.method static synthetic access$002(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatus:I

    return p1
.end method

.method static synthetic access$100(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .line 59
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    return v0
.end method

.method static synthetic access$1002(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    return p1
.end method

.method static synthetic access$102(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusPrev:I

    return p1
.end method

.method static synthetic access$1102(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    return p1
.end method

.method static synthetic access$1202(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    return p1
.end method

.method static synthetic access$1302(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    return p1
.end method

.method static synthetic access$1402(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    return p1
.end method

.method static synthetic access$1502(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    return p1
.end method

.method static synthetic access$1602(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    return p1
.end method

.method static synthetic access$1702(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/server/HapticsService;)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .line 59
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$272(Lcn/nubia/server/HapticsService;I)I
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/2addr v0, p1

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    return v0
.end method

.method static synthetic access$300(Lcn/nubia/server/HapticsService;)[B
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    return-object v0
.end method

.method static synthetic access$402(Lcn/nubia/server/HapticsService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcn/nubia/server/HapticsService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;

    .line 59
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$602(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    return p1
.end method

.method static synthetic access$702(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticWhenRing:I

    return p1
.end method

.method static synthetic access$802(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    return p1
.end method

.method static synthetic access$902(Lcn/nubia/server/HapticsService;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/HapticsService;
    .param p1, "x1"    # I

    .line 59
    iput p1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    return p1
.end method

.method private isA2HEnabled(Ljava/lang/String;)Z
    .locals 3
    .param p1, "appname"    # Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mA2H_str:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private setupRTPSeq(Ljava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # Ljava/lang/String;

    .line 366
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 367
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, "seq_str":[Ljava/lang/String;
    array-length v2, v0

    const/16 v3, 0x20

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    array-length v3, v0

    :goto_0
    iput v3, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 369
    nop

    .local v1, "i":I
    :goto_1
    iget v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    if-ge v1, v2, :cond_1

    .line 370
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 369
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 372
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setupRTPSeq([BI)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .line 375
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 377
    const/16 v0, 0x20

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    .line 378
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    if-ge v0, v1, :cond_1

    .line 379
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 378
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 381
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setupSeq(Ljava/lang/String;)V
    .locals 4
    .param p1, "sequence"    # Ljava/lang/String;

    .line 351
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 352
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "seq_str":[Ljava/lang/String;
    nop

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 354
    iget-object v2, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private setupSeq([BI)V
    .locals 3
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I

    .line 359
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 360
    nop

    .local v1, "i":I
    :goto_0
    move v0, v1

    .end local v1    # "i":I
    .local v0, "i":I
    if-ge v0, p2, :cond_0

    .line 361
    iget-object v1, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    .line 360
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    .line 363
    .end local v1    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getDefaultRingHapticsName(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 593
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getRingHapticsName(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 581
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsName:[Ljava/lang/String;

    return-object v0
.end method

.method public getRingHapticsValue(ILandroid/os/IBinder;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 589
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getRingHapticsValues(Landroid/os/IBinder;)[Ljava/lang/String;
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;

    .line 585
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    return-object v0
.end method

.method public playEffectSeqBuff([BILandroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 451
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    if-lez p2, :cond_1

    if-ge p2, v1, :cond_1

    .line 456
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 457
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/HapticsService;->setupSeq([BI)V

    .line 459
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    invoke-static {v0, p2}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    .line 463
    :cond_1
    :goto_0
    return-void
.end method

.method public playEffectSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 434
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 437
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 443
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 444
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    .line 447
    :cond_2
    :goto_0
    return-void
.end method

.method public playEffectSequenceRepeat(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "repeat"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 499
    iput p2, p0, Lcn/nubia/server/HapticsService;->mHapticsRepeat:I

    .line 500
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 501
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    .line 503
    return-void
.end method

.method public playPatternRTP(IIIILandroid/os/IBinder;)V
    .locals 0
    .param p1, "vibrationDuration"    # I
    .param p2, "silienceDuration"    # I
    .param p3, "repeat_times"    # I
    .param p4, "vibrationStrength"    # I
    .param p5, "token"    # Landroid/os/IBinder;

    .line 428
    invoke-static {p1, p2, p3, p4}, Lcn/nubia/server/HapticsService;->JNI_playPatternRTP(IIII)V

    .line 430
    return-void
.end method

.method public playRTPSeqBuff([BILandroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # [B
    .param p2, "buffSize"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 484
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    if-lez p2, :cond_1

    const/16 v0, 0x10

    if-ge p2, v0, :cond_1

    .line 488
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 489
    invoke-direct {p0, p1, p2}, Lcn/nubia/server/HapticsService;->setupRTPSeq([BI)V

    .line 491
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playRTPSequence([BI)V

    .line 495
    :cond_1
    :goto_0
    return-void
.end method

.method public playRTPSequence(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "sequence"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 467
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 470
    :cond_0
    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    const-string v0, "HapticsService"

    const-string v1, "Seq ZERO, bypass"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    return-void

    .line 475
    :cond_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 476
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->setupRTPSeq(Ljava/lang/String;)V

    .line 477
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRTPSeq:[B

    iget v1, p0, Lcn/nubia/server/HapticsService;->mRTPSeqLen:I

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playRTPSequence([BI)V

    .line 480
    :cond_2
    :goto_0
    return-void
.end method

.method public playRingHaptics(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 548
    if-nez p1, :cond_0

    iget v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    if-nez v0, :cond_0

    .line 549
    return-void

    .line 551
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/16 v1, 0x8

    or-int/2addr v0, v1

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 552
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 553
    const/4 v0, 0x0

    invoke-static {v0}, Lcn/nubia/server/HapticsService;->JNI_setAudioHapticEnabled(Z)V

    .line 556
    :cond_1
    if-nez p1, :cond_2

    .line 557
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    iget v2, p0, Lcn/nubia/server/HapticsService;->mRingHapticsDefault:I

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :cond_2
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 562
    :goto_0
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    .line 564
    return-void
.end method

.method public playRingSeq(ILandroid/os/IBinder;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 569
    if-nez p1, :cond_0

    .line 570
    return-void

    .line 572
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 574
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mRingHapticsSeq:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-direct {p0, v0}, Lcn/nubia/server/HapticsService;->setupSeq(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mSeq:[B

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    .line 578
    return-void
.end method

.method public playTimedEffect(ILandroid/os/IBinder;)V
    .locals 0
    .param p1, "effectDuration"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 422
    invoke-static {p1}, Lcn/nubia/server/HapticsService;->JNI_playTimedEffect(I)V

    .line 424
    return-void
.end method

.method public playeffect(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 384
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_2

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    if-ne v0, v1, :cond_2

    .line 388
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 390
    .local v0, "value":I
    if-lez v0, :cond_1

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_1

    .line 391
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->JNI_playEffect(I)V

    goto :goto_0

    .line 393
    :cond_1
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v0    # "value":I
    :cond_2
    :goto_0
    return-void
.end method

.method public playeffectforce(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "effectID"    # I
    .param p2, "token"    # Landroid/os/IBinder;

    .line 400
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/4 v2, 0x1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    if-ne v0, v2, :cond_3

    .line 404
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 405
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mUnLockEffect:[B

    invoke-static {v0, v1}, Lcn/nubia/server/HapticsService;->JNI_playEffectSequence([BI)V

    goto :goto_0

    .line 407
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->LookupHapticValue(I)I

    move-result v0

    .line 409
    .local v0, "value":I
    if-lez v0, :cond_2

    const/16 v1, 0x7c

    if-ge v0, v1, :cond_2

    .line 410
    invoke-static {v0}, Lcn/nubia/server/HapticsService;->JNI_playEffect(I)V

    goto :goto_0

    .line 413
    :cond_2
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "effectID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " invalid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .end local v0    # "value":I
    :cond_3
    :goto_0
    return-void
.end method

.method public setAudioHapticEnabled(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "appname"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 527
    invoke-direct {p0, p1}, Lcn/nubia/server/HapticsService;->isA2HEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 529
    .local v0, "sw":Z
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 530
    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    or-int/2addr v2, v1

    iput v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 531
    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    invoke-static {v1}, Lcn/nubia/server/HapticsService;->JNI_setAudioHapticEnabled(Z)V

    goto :goto_0

    .line 536
    :cond_1
    iget v2, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    if-ne v2, v1, :cond_2

    .line 537
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/nubia/server/HapticsService;->JNI_setAudioHapticEnabled(Z)V

    .line 539
    :cond_2
    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 543
    :goto_0
    return-void
.end method

.method public stopPlayingEffect(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 507
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcn/nubia/server/HapticsService;->JNI_stopPlayingEffect()V

    .line 509
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 513
    :cond_0
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 514
    invoke-static {v1}, Lcn/nubia/server/HapticsService;->JNI_setAudioHapticEnabled(Z)V

    .line 515
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 518
    :cond_1
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 519
    invoke-static {}, Lcn/nubia/server/HapticsService;->JNI_stopPlayingEffect()V

    .line 520
    iget v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcn/nubia/server/HapticsService;->mHapticsMode:I

    .line 523
    :cond_2
    return-void
.end method

.method public systemReady()V
    .locals 5

    .line 313
    :try_start_0
    invoke-static {}, Lcn/nubia/server/HapticsService;->JNI_initialize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    goto :goto_0

    .line 314
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "HapticsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initialize fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "data_haptictheme_SIP"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeSIP:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 319
    const-string v0, "data_haptictheme_dialpad"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeDialpad:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 320
    const-string v0, "data_haptictheme_launcher"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLauncher:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 321
    const-string v0, "data_haptictheme_longpress"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeLPress:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 322
    const-string v0, "data_haptictheme_virtualkey"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeVK:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 323
    const-string v0, "data_haptictheme_rotate"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeRotate:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 324
    const-string v0, "data_haptictheme_gallery"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsThemeGallery:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 325
    const-string v0, "data_haptictheme_scroll"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsScrolling:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 326
    const-string v0, "data_haptictheme_multi_touch"

    iget v1, p0, Lcn/nubia/server/HapticsService;->mHapticsMultitouch:I

    invoke-direct {p0, v0, v1}, Lcn/nubia/server/HapticsService;->InitHapticsEffectSettings(Ljava/lang/String;I)V

    .line 327
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->InitHapticsA2HSetting()V

    .line 328
    invoke-direct {p0}, Lcn/nubia/server/HapticsService;->InitHapticsRingSetting()V

    .line 330
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/nubia/server/HapticsService;->mFeedbackEnabled:I

    .line 331
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->resolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Lcn/nubia/server/HapticsService$6;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcn/nubia/server/HapticsService$6;-><init>(Lcn/nubia/server/HapticsService;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 339
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/virtual/switch/haptics/state"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcn/nubia/server/HapticsService;->mHapticsStatusObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/haptics"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    goto :goto_1

    .line 342
    :cond_0
    const-string v0, "HapticsService"

    const-string/jumbo v1, "switch not exist"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :goto_1
    return-void
.end method

.class public Lcom/android/internal/telephony/uicc/CarrierTestOverride;
.super Ljava/lang/Object;
.source "CarrierTestOverride.java"


# static fields
.field static final CARRIER_TEST_XML_HEADER:Ljava/lang/String; = "carrierTestOverrides"

.field static final CARRIER_TEST_XML_ITEM_KEY:Ljava/lang/String; = "key"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_GID1:Ljava/lang/String; = "gid1"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_GID2:Ljava/lang/String; = "gid2"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_ICCID:Ljava/lang/String; = "iccid"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_IMSI:Ljava/lang/String; = "imsi"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_ISINTESTMODE:Ljava/lang/String; = "isInTestMode"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_MCCMNC:Ljava/lang/String; = "mccmnc"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_PNN:Ljava/lang/String; = "pnn"

.field static final CARRIER_TEST_XML_ITEM_KEY_STRING_SPN:Ljava/lang/String; = "spn"

.field static final CARRIER_TEST_XML_ITEM_VALUE:Ljava/lang/String; = "value"

.field static final CARRIER_TEST_XML_SUBHEADER:Ljava/lang/String; = "carrierTestOverride"

.field static final DATA_CARRIER_TEST_OVERRIDE_PATH:Ljava/lang/String; = "/user_de/0/com.android.phone/files/carrier_test_conf.xml"

.field static final LOG_TAG:Ljava/lang/String; = "CarrierTestOverride"


# instance fields
.field private mCarrierTestParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->loadCarrierTestOverrides()V

    .line 75
    return-void
.end method

.method private loadCarrierTestOverrides()V
    .locals 9

    .line 176
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/user_de/0/com.android.phone/files/carrier_test_conf.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 180
    .local v0, "carrierTestConfigFile":Ljava/io/File;
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 181
    .local v1, "carrierTestConfigReader":Ljava/io/FileReader;
    const-string v2, "CarrierTestOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarrierTestConfig file Modified Timestamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 186
    nop

    .line 185
    nop

    .line 189
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 190
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 192
    const-string v3, "carrierTestOverrides"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 197
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "name":Ljava/lang/String;
    const-string v4, "carrierTestOverride"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 199
    nop

    .line 209
    .end local v3    # "name":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V

    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    goto :goto_1

    .line 202
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    const-string v4, "key"

    const/4 v5, 0x0

    invoke-interface {v2, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 203
    .local v4, "key":Ljava/lang/String;
    const-string v6, "value"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 205
    .local v5, "value":Ljava/lang/String;
    const-string v6, "CarrierTestOverride"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "extracting key-values from CarrierTestConfig file: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "|"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 208
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_0

    .line 212
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 213
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "CarrierTestOverride"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in carrier_test_conf parser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 210
    :catch_1
    move-exception v2

    .line 211
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "CarrierTestOverride"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in carrier_test_conf parser "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    nop

    .line 215
    :goto_2
    return-void

    .line 183
    .end local v1    # "carrierTestConfigReader":Ljava/io/FileReader;
    :catch_2
    move-exception v1

    .line 184
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v2, "CarrierTestOverride"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not open "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void
.end method


# virtual methods
.method getFakeGid1()Ljava/lang/String;
    .locals 4

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "gid1"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "gid1":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading gid1 from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-object v0

    .line 110
    .end local v0    # "gid1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No gid1 in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakeGid2()Ljava/lang/String;
    .locals 4

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "gid2"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "gid2":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading gid2 from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    return-object v0

    .line 121
    .end local v0    # "gid2":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No gid2 in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakeIMSI()Ljava/lang/String;
    .locals 4

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "imsi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    .local v0, "imsi":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading imsi from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-object v0

    .line 99
    .end local v0    # "imsi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No imsi in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakeIccid()Ljava/lang/String;
    .locals 4

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "iccid"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 141
    .local v0, "iccid":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading iccid from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    return-object v0

    .line 143
    .end local v0    # "iccid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No iccid in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakeMccMnc()Ljava/lang/String;
    .locals 4

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "mccmnc"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 152
    .local v0, "mccmnc":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading mccmnc from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    return-object v0

    .line 154
    .end local v0    # "mccmnc":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No mccmnc in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakePnnHomeName()Ljava/lang/String;
    .locals 4

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "pnn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 130
    .local v0, "pnn":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading pnn from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    return-object v0

    .line 132
    .end local v0    # "pnn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No pnn in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v1, 0x0

    return-object v1
.end method

.method getFakeSpn()Ljava/lang/String;
    .locals 4

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "spn"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 86
    .local v0, "spn":Ljava/lang/String;
    const-string v1, "CarrierTestOverride"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reading spn from CarrierTestConfig file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    return-object v0

    .line 88
    .end local v0    # "spn":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "CarrierTestOverride"

    const-string v2, "No spn in CarrierTestConfig file "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const/4 v1, 0x0

    return-object v1
.end method

.method isInTestMode()Z
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "isInTestMode"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "isInTestMode"

    .line 79
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "true"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    return v0
.end method

.method override(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "mccmnc"    # Ljava/lang/String;
    .param p2, "imsi"    # Ljava/lang/String;
    .param p3, "iccid"    # Ljava/lang/String;
    .param p4, "gid1"    # Ljava/lang/String;
    .param p5, "gid2"    # Ljava/lang/String;
    .param p6, "pnn"    # Ljava/lang/String;
    .param p7, "spn"    # Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "isInTestMode"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "mccmnc"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "imsi"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "iccid"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "gid1"

    invoke-virtual {v0, v1, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "gid2"

    invoke-virtual {v0, v1, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "pnn"

    invoke-virtual {v0, v1, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/CarrierTestOverride;->mCarrierTestParamMap:Ljava/util/HashMap;

    const-string v1, "spn"

    invoke-virtual {v0, v1, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    return-void
.end method

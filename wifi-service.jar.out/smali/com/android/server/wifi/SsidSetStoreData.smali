.class public Lcom/android/server/wifi/SsidSetStoreData;
.super Ljava/lang/Object;
.source "SsidSetStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/SsidSetStoreData$DataSource;
    }
.end annotation


# static fields
.field private static final XML_TAG_SECTION_HEADER_SUFFIX:Ljava/lang/String; = "ConfigData"

.field private static final XML_TAG_SSID_SET:Ljava/lang/String; = "SSIDSet"


# instance fields
.field private final mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

.field private final mTagName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/wifi/SsidSetStoreData$DataSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dataSource"    # Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ConfigData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/SsidSetStoreData;->mTagName:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/android/server/wifi/SsidSetStoreData;->mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    .line 77
    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 7
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    if-nez p1, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    if-nez p3, :cond_6

    .line 102
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 104
    .local v0, "valueName":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 108
    aget-object v3, v0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0x4793ad19

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "SSIDSet"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 110
    iget-object v2, p0, Lcom/android/server/wifi/SsidSetStoreData;->mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    move-object v3, v1

    check-cast v3, Ljava/util/Set;

    invoke-interface {v2, v3}, Lcom/android/server/wifi/SsidSetStoreData$DataSource;->setSsids(Ljava/util/Set;)V

    .line 111
    nop

    .line 116
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 113
    .restart local v0    # "valueName":[Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wifi/SsidSetStoreData;->mTagName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 106
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing value name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_5
    return-void

    .line 99
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/server/wifi/SsidSetStoreData;->mTagName:Ljava/lang/String;

    return-object v0
.end method

.method public resetData(Z)V
    .locals 2
    .param p1, "shared"    # Z

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/wifi/SsidSetStoreData;->mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1}, Lcom/android/server/wifi/SsidSetStoreData$DataSource;->setSsids(Ljava/util/Set;)V

    .line 124
    :cond_0
    return-void
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 3
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    if-nez p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/server/wifi/SsidSetStoreData;->mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    invoke-interface {v0}, Lcom/android/server/wifi/SsidSetStoreData$DataSource;->getSsids()Ljava/util/Set;

    move-result-object v0

    .line 86
    .local v0, "ssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    const-string v1, "SSIDSet"

    iget-object v2, p0, Lcom/android/server/wifi/SsidSetStoreData;->mDataSource:Lcom/android/server/wifi/SsidSetStoreData$DataSource;

    invoke-interface {v2}, Lcom/android/server/wifi/SsidSetStoreData$DataSource;->getSsids()Ljava/util/Set;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    :cond_0
    return-void

    .line 83
    .end local v0    # "ssidSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportShareData()Z
    .locals 1

    .line 133
    const/4 v0, 0x0

    return v0
.end method

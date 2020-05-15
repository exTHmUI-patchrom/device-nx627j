.class public Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;
.super Ljava/lang/Object;
.source "DeletedEphemeralSsidsStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# static fields
.field private static final XML_TAG_SECTION_HEADER_DELETED_EPHEMERAL_SSID_LIST:Ljava/lang/String; = "DeletedEphemeralSSIDList"

.field private static final XML_TAG_SSID_LIST:Ljava/lang/String; = "SSIDList"


# instance fields
.field private mSsidList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    .line 57
    if-nez p1, :cond_0

    .line 58
    return-void

    .line 60
    :cond_0
    if-nez p3, :cond_6

    .line 64
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 66
    .local v0, "valueName":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "value":Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    if-eqz v3, :cond_4

    .line 70
    aget-object v3, v0, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x551aeab9

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "SSIDList"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v4, v2

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 72
    move-object v2, v1

    check-cast v2, Ljava/util/Set;

    iput-object v2, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    .line 73
    nop

    .line 79
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    goto :goto_0

    .line 75
    .restart local v0    # "valueName":[Ljava/lang/String;
    .restart local v1    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tag under DeletedEphemeralSSIDList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v0, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v3, "Missing value name"

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 80
    .end local v0    # "valueName":[Ljava/lang/String;
    .end local v1    # "value":Ljava/lang/Object;
    :cond_5
    return-void

    .line 61
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    const-string v0, "DeletedEphemeralSSIDList"

    return-object v0
.end method

.method public getSsidList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    return-object v0
.end method

.method public resetData(Z)V
    .locals 1
    .param p1, "shared"    # Z

    .line 84
    if-nez p1, :cond_0

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    .line 87
    :cond_0
    return-void
.end method

.method public serializeData(Lorg/xmlpull/v1/XmlSerializer;Z)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    if-nez p2, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "SSIDList"

    iget-object v1, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    :cond_0
    return-void

    .line 46
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSsidList(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p1, "ssidList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/wifi/DeletedEphemeralSsidsStoreData;->mSsidList:Ljava/util/Set;

    .line 113
    return-void
.end method

.method public supportShareData()Z
    .locals 1

    .line 96
    const/4 v0, 0x0

    return v0
.end method

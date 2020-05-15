.class public Lcom/android/server/wifi/WakeupConfigStoreData;
.super Ljava/lang/Object;
.source "WakeupConfigStoreData.java"

# interfaces
.implements Lcom/android/server/wifi/WifiConfigStore$StoreData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeupConfigStoreData"

.field private static final XML_TAG_FEATURE_STATE_SECTION:Ljava/lang/String; = "FeatureState"

.field private static final XML_TAG_IS_ACTIVE:Ljava/lang/String; = "IsActive"

.field private static final XML_TAG_IS_ONBOARDED:Ljava/lang/String; = "IsOnboarded"

.field private static final XML_TAG_NETWORK_SECTION:Ljava/lang/String; = "Network"

.field private static final XML_TAG_NOTIFICATIONS_SHOWN:Ljava/lang/String; = "NotificationsShown"

.field private static final XML_TAG_SECURITY:Ljava/lang/String; = "Security"

.field private static final XML_TAG_SSID:Ljava/lang/String; = "SSID"


# instance fields
.field private mHasBeenRead:Z

.field private final mIsActiveDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsOnboardedDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationsDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<",
            "Ljava/util/Set<",
            "Lcom/android/server/wifi/ScanResultMatchInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 82
    .local p1, "isActiveDataSource":Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;, "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<Ljava/lang/Boolean;>;"
    .local p2, "isOnboardedDataSource":Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;, "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<Ljava/lang/Boolean;>;"
    .local p3, "notificationsDataSource":Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;, "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<Ljava/lang/Integer;>;"
    .local p4, "networkDataSource":Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;, "Lcom/android/server/wifi/WakeupConfigStoreData$DataSource<Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mHasBeenRead:Z

    .line 83
    iput-object p1, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsActiveDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    .line 84
    iput-object p2, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsOnboardedDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    .line 85
    iput-object p3, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNotificationsDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    .line 86
    iput-object p4, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNetworkDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    .line 87
    return-void
.end method

.method private parseFeatureState(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 11
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 192
    const/4 v0, 0x0

    .line 193
    .local v0, "isActive":Z
    const/4 v1, 0x0

    .line 194
    .local v1, "isOnboarded":Z
    const/4 v2, 0x0

    move v3, v1

    move v1, v0

    move v0, v2

    .line 196
    .local v0, "notificationsShown":I
    .local v1, "isActive":Z
    .local v3, "isOnboarded":Z
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 197
    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/String;

    .line 198
    .local v5, "valueName":[Ljava/lang/String;
    invoke-static {p1, v5}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 199
    .local v6, "value":Ljava/lang/Object;
    aget-object v7, v5, v2

    if-eqz v7, :cond_4

    .line 202
    aget-object v7, v5, v2

    const/4 v8, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, -0x66d2d2e4    # -8.953E-24f

    if-eq v9, v10, :cond_2

    const v4, -0x28c92b10

    if-eq v9, v4, :cond_1

    const v4, 0x35908d29

    if-eq v9, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "NotificationsShown"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    goto :goto_2

    :cond_1
    const-string v4, "IsActive"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    goto :goto_2

    :cond_2
    const-string v9, "IsOnboarded"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v8

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 213
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown value found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v5, v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 210
    :pswitch_0
    move-object v4, v6

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 211
    goto :goto_3

    .line 207
    :pswitch_1
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    .line 208
    goto :goto_3

    .line 204
    :pswitch_2
    move-object v4, v6

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 205
    nop

    .line 215
    .end local v5    # "valueName":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 200
    .restart local v5    # "valueName":[Ljava/lang/String;
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v2, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 217
    .end local v5    # "valueName":[Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :cond_5
    iget-object v2, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsActiveDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 218
    iget-object v2, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsOnboardedDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 219
    iget-object v2, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNotificationsDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 220
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parseNetwork(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/ScanResultMatchInfo;
    .locals 9
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 233
    new-instance v0, Lcom/android/server/wifi/ScanResultMatchInfo;

    invoke-direct {v0}, Lcom/android/server/wifi/ScanResultMatchInfo;-><init>()V

    .line 234
    .local v0, "scanResultMatchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    :goto_0
    invoke-static {p1, p2}, Lcom/android/server/wifi/util/XmlUtil;->isNextSectionEnd(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 235
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 236
    .local v2, "valueName":[Ljava/lang/String;
    invoke-static {p1, v2}, Lcom/android/server/wifi/util/XmlUtil;->readCurrentValue(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 237
    .local v3, "value":Ljava/lang/Object;
    const/4 v4, 0x0

    aget-object v5, v2, v4

    if-eqz v5, :cond_3

    .line 240
    aget-object v5, v2, v4

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x26fb7b

    if-eq v7, v8, :cond_1

    const v8, 0x3c6cdb60    # 0.0144566f

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    const-string v7, "Security"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_1
    const-string v1, "SSID"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v6

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 248
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under WakeupConfigStoreData: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 245
    :pswitch_0
    move-object v1, v3

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    .line 246
    goto :goto_3

    .line 242
    :pswitch_1
    move-object v1, v3

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    .line 243
    nop

    .line 251
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_3
    goto :goto_0

    .line 238
    .restart local v2    # "valueName":[Ljava/lang/String;
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v4, "Missing value name"

    invoke-direct {v1, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    .end local v2    # "valueName":[Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeFeatureState(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    const-string v0, "FeatureState"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 121
    const-string v0, "IsActive"

    iget-object v1, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsActiveDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-interface {v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    const-string v0, "IsOnboarded"

    iget-object v1, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsOnboardedDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-interface {v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->getData()Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    const-string v0, "NotificationsShown"

    iget-object v1, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNotificationsDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    .line 124
    invoke-interface {v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->getData()Ljava/lang/Object;

    move-result-object v1

    .line 123
    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    const-string v0, "FeatureState"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method private writeNetwork(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/ScanResultMatchInfo;)V
    .locals 2
    .param p1, "out"    # Lorg/xmlpull/v1/XmlSerializer;
    .param p2, "scanResultMatchInfo"    # Lcom/android/server/wifi/ScanResultMatchInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 139
    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionStart(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 141
    const-string v0, "SSID"

    iget-object v1, p2, Lcom/android/server/wifi/ScanResultMatchInfo;->networkSsid:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v0, "Security"

    iget v1, p2, Lcom/android/server/wifi/ScanResultMatchInfo;->networkType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/server/wifi/util/XmlUtil;->writeNextValue(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v0, "Network"

    invoke-static {p1, v0}, Lcom/android/server/wifi/util/XmlUtil;->writeNextSectionEnd(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    .line 145
    return-void
.end method


# virtual methods
.method public deserializeData(Lorg/xmlpull/v1/XmlPullParser;IZ)V
    .locals 8
    .param p1, "in"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "outerTagDepth"    # I
    .param p3, "shared"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 151
    iget-boolean v1, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mHasBeenRead:Z

    if-nez v1, :cond_0

    .line 152
    const-string v1, "WakeupConfigStoreData"

    const-string v2, "WifiWake user data has been read"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mHasBeenRead:Z

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    return-void

    .line 161
    :cond_1
    if-nez p3, :cond_6

    .line 165
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 167
    .local v1, "networks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    new-array v2, v0, [Ljava/lang/String;

    .line 168
    .local v2, "headerName":[Ljava/lang/String;
    :goto_0
    invoke-static {p1, v2, p2}, Lcom/android/server/wifi/util/XmlUtil;->gotoNextSectionOrEnd(Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 169
    const/4 v3, 0x0

    aget-object v4, v2, v3

    const/4 v5, -0x1

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, -0x2ee60df2

    if-eq v6, v7, :cond_3

    const v7, 0x5135175b

    if-eq v6, v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "FeatureState"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_3
    const-string v3, "Network"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 174
    :pswitch_0
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WakeupConfigStoreData;->parseNetwork(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/wifi/ScanResultMatchInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 171
    :pswitch_1
    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/wifi/WakeupConfigStoreData;->parseFeatureState(Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 172
    nop

    .line 175
    :goto_3
    goto :goto_0

    .line 179
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNetworkDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 180
    return-void

    .line 162
    .end local v1    # "networks":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/wifi/ScanResultMatchInfo;>;"
    .end local v2    # "headerName":[Ljava/lang/String;
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Shared data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 268
    const-string v0, "WakeupConfigStoreData"

    return-object v0
.end method

.method public hasBeenRead()Z
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mHasBeenRead:Z

    return v0
.end method

.method public resetData(Z)V
    .locals 3
    .param p1, "shared"    # Z

    .line 258
    if-nez p1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNetworkDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsActiveDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mIsOnboardedDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 262
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNotificationsDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->setData(Ljava/lang/Object;)V

    .line 264
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

    .line 99
    if-nez p2, :cond_1

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WakeupConfigStoreData;->writeFeatureState(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/wifi/WakeupConfigStoreData;->mNetworkDataSource:Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;

    invoke-interface {v0}, Lcom/android/server/wifi/WakeupConfigStoreData$DataSource;->getData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/ScanResultMatchInfo;

    .line 106
    .local v1, "scanResultMatchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    invoke-direct {p0, p1, v1}, Lcom/android/server/wifi/WakeupConfigStoreData;->writeNetwork(Lorg/xmlpull/v1/XmlSerializer;Lcom/android/server/wifi/ScanResultMatchInfo;)V

    .line 107
    .end local v1    # "scanResultMatchInfo":Lcom/android/server/wifi/ScanResultMatchInfo;
    goto :goto_0

    .line 108
    :cond_0
    return-void

    .line 100
    :cond_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v1, "Share data not supported"

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public supportShareData()Z
    .locals 1

    .line 273
    const/4 v0, 0x0

    return v0
.end method

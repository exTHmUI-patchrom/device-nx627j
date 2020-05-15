.class public final Landroid/net/NetworkScorerAppData;
.super Ljava/lang/Object;
.source "NetworkScorerAppData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

.field private final mNetworkAvailableNotificationChannelId:Ljava/lang/String;

.field private final mRecommendationService:Landroid/content/ComponentName;

.field private final mRecommendationServiceLabel:Ljava/lang/String;

.field public final packageUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Landroid/net/NetworkScorerAppData$1;

    invoke-direct {v0}, Landroid/net/NetworkScorerAppData$1;-><init>()V

    sput-object v0, Landroid/net/NetworkScorerAppData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/content/ComponentName;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageUid"    # I
    .param p2, "recommendationServiceComp"    # Landroid/content/ComponentName;
    .param p3, "recommendationServiceLabel"    # Ljava/lang/String;
    .param p4, "enableUseOpenWifiActivity"    # Landroid/content/ComponentName;
    .param p5, "networkAvailableNotificationChannelId"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 36
    iput-object p2, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 37
    iput-object p3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 38
    iput-object p4, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 39
    iput-object p5, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    .line 44
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 46
    invoke-static {p1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 48
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 114
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 115
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 116
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/net/NetworkScorerAppData;

    .line 117
    .local v2, "that":Landroid/net/NetworkScorerAppData;
    iget v3, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    iget v4, v2, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    .line 118
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    .line 119
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    .line 120
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    iget-object v4, v2, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    .line 121
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 115
    .end local v2    # "that":Landroid/net/NetworkScorerAppData;
    :cond_3
    :goto_1
    return v1
.end method

.method public getEnableUseOpenWifiActivity()Landroid/content/ComponentName;
    .locals 1

    .line 87
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getNetworkAvailableNotificationChannelId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServiceComponent()Landroid/content/ComponentName;
    .locals 1

    .line 82
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getRecommendationServiceLabel()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    return-object v0
.end method

.method public getRecommendationServicePackageName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 127
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkScorerAppData{packageUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationService="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecommendationServiceLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEnableUseOpenWifiActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mNetworkAvailableNotificationChannelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 52
    iget v0, p0, Landroid/net/NetworkScorerAppData;->packageUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationService:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 54
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mRecommendationServiceLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mEnableUseOpenWifiActivity:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 56
    iget-object v0, p0, Landroid/net/NetworkScorerAppData;->mNetworkAvailableNotificationChannelId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return-void
.end method

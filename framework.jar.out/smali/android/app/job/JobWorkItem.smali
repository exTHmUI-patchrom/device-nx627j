.class public final Landroid/app/job/JobWorkItem;
.super Ljava/lang/Object;
.source "JobWorkItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mDeliveryCount:I

.field mGrants:Ljava/lang/Object;

.field final mIntent:Landroid/content/Intent;

.field final mNetworkDownloadBytes:J

.field final mNetworkUploadBytes:J

.field mWorkId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 211
    new-instance v0, Landroid/app/job/JobWorkItem$1;

    invoke-direct {v0}, Landroid/app/job/JobWorkItem$1;-><init>()V

    sput-object v0, Landroid/app/job/JobWorkItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 47
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 48
    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;J)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "networkBytes"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 57
    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/app/job/JobWorkItem;-><init>(Landroid/content/Intent;JJ)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;JJ)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "downloadBytes"    # J
    .param p4, "uploadBytes"    # J

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 75
    iput-wide p2, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 76
    iput-wide p4, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 77
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    goto :goto_0

    .line 226
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    .line 228
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 232
    return-void
.end method


# virtual methods
.method public bumpDeliveryCount()V
    .locals 1

    .line 141
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    .line 142
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 195
    const/4 v0, 0x0

    return v0
.end method

.method public getDeliveryCount()I
    .locals 1

    .line 134
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    return v0
.end method

.method public getEstimatedNetworkBytes()J
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 93
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 95
    return-wide v2

    .line 96
    :cond_0
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 97
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    return-wide v0

    .line 98
    :cond_1
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 99
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    return-wide v0

    .line 101
    :cond_2
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    iget-wide v2, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getEstimatedNetworkDownloadBytes()J
    .locals 2

    .line 113
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    return-wide v0
.end method

.method public getEstimatedNetworkUploadBytes()J
    .locals 2

    .line 124
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    return-wide v0
.end method

.method public getGrants()Ljava/lang/Object;
    .locals 1

    .line 169
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .line 83
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getWorkId()I
    .locals 1

    .line 155
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    return v0
.end method

.method public setGrants(Ljava/lang/Object;)V
    .locals 0
    .param p1, "grants"    # Ljava/lang/Object;

    .line 162
    iput-object p1, p0, Landroid/app/job/JobWorkItem;->mGrants:Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public setWorkId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 148
    iput p1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    .line 149
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 174
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "JobWorkItem{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    iget v1, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 179
    const-string v1, " downloadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 182
    :cond_0
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 183
    const-string v1, " uploadBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    iget-wide v1, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 186
    :cond_1
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    if-eqz v1, :cond_2

    .line 187
    const-string v1, " dcount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    iget v1, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 190
    :cond_2
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 199
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 200
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget-object v0, p0, Landroid/app/job/JobWorkItem;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 203
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    :goto_0
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkDownloadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget-wide v0, p0, Landroid/app/job/JobWorkItem;->mNetworkUploadBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 207
    iget v0, p0, Landroid/app/job/JobWorkItem;->mDeliveryCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Landroid/app/job/JobWorkItem;->mWorkId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return-void
.end method

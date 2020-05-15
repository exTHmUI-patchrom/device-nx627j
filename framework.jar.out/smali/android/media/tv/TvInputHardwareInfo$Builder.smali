.class public final Landroid/media/tv/TvInputHardwareInfo$Builder;
.super Ljava/lang/Object;
.source "TvInputHardwareInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputHardwareInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mAudioAddress:Ljava/lang/String;

.field private mAudioType:I

.field private mCableConnectionStatus:Ljava/lang/Integer;

.field private mDeviceId:Ljava/lang/Integer;

.field private mHdmiPortId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 190
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 191
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 192
    const-string v2, ""

    iput-object v2, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 193
    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    .line 197
    return-void
.end method


# virtual methods
.method public audioAddress(Ljava/lang/String;)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 0
    .param p1, "audioAddress"    # Ljava/lang/String;

    .line 215
    iput-object p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    .line 216
    return-object p0
.end method

.method public audioType(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 0
    .param p1, "audioType"    # I

    .line 210
    iput p1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    .line 211
    return-object p0
.end method

.method public build()Landroid/media/tv/TvInputHardwareInfo;
    .locals 2

    .line 233
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 236
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 237
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    .line 238
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 241
    :cond_2
    :goto_0
    new-instance v0, Landroid/media/tv/TvInputHardwareInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;-><init>(Landroid/media/tv/TvInputHardwareInfo$1;)V

    .line 242
    .local v0, "info":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$102(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 243
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$202(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 244
    iget v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioType:I

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$302(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 245
    invoke-static {v0}, Landroid/media/tv/TvInputHardwareInfo;->access$300(Landroid/media/tv/TvInputHardwareInfo;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mAudioAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$402(Landroid/media/tv/TvInputHardwareInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    :cond_3
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    if-eqz v1, :cond_4

    .line 249
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$502(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 251
    :cond_4
    iget-object v1, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/tv/TvInputHardwareInfo;->access$602(Landroid/media/tv/TvInputHardwareInfo;I)I

    .line 252
    return-object v0

    .line 234
    .end local v0    # "info":Landroid/media/tv/TvInputHardwareInfo;
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public cableConnectionStatus(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "cableConnectionStatus"    # I

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mCableConnectionStatus:Ljava/lang/Integer;

    .line 229
    return-object p0
.end method

.method public deviceId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "deviceId"    # I

    .line 200
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mDeviceId:Ljava/lang/Integer;

    .line 201
    return-object p0
.end method

.method public hdmiPortId(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "hdmiPortId"    # I

    .line 220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mHdmiPortId:Ljava/lang/Integer;

    .line 221
    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvInputHardwareInfo$Builder;
    .locals 1
    .param p1, "type"    # I

    .line 205
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/tv/TvInputHardwareInfo$Builder;->mType:Ljava/lang/Integer;

    .line 206
    return-object p0
.end method

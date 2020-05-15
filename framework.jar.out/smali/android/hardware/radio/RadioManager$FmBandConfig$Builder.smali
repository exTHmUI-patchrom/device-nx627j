.class public Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
.super Ljava/lang/Object;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/RadioManager$FmBandConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAf:Z

.field private final mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

.field private mEa:Z

.field private mRds:Z

.field private mStereo:Z

.field private mTa:Z


# direct methods
.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandConfig;)V
    .locals 7
    .param p1, "config"    # Landroid/hardware/radio/RadioManager$FmBandConfig;

    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1200
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getType()I

    move-result v2

    .line 1201
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getUpperLimit()I

    move-result v4

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1202
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getStereo()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1203
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getRds()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1204
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getTa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1205
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getAf()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1206
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandConfig;->getEa()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1207
    return-void
.end method

.method public constructor <init>(Landroid/hardware/radio/RadioManager$FmBandDescriptor;)V
    .locals 7
    .param p1, "descriptor"    # Landroid/hardware/radio/RadioManager$FmBandDescriptor;

    .line 1184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    new-instance v6, Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getRegion()I

    move-result v1

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getType()I

    move-result v2

    .line 1186
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getLowerLimit()I

    move-result v3

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getUpperLimit()I

    move-result v4

    .line 1187
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->getSpacing()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/hardware/radio/RadioManager$BandDescriptor;-><init>(IIIII)V

    iput-object v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1188
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isStereoSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1189
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isRdsSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1190
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isTaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1191
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isAfSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1192
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$FmBandDescriptor;->isEaSupported()Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1193
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/radio/RadioManager$FmBandConfig;
    .locals 12

    .line 1215
    new-instance v11, Landroid/hardware/radio/RadioManager$FmBandConfig;

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getRegion()I

    move-result v1

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1216
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getType()I

    move-result v2

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getLowerLimit()I

    move-result v3

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    .line 1217
    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getUpperLimit()I

    move-result v4

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mDescriptor:Landroid/hardware/radio/RadioManager$BandDescriptor;

    invoke-virtual {v0}, Landroid/hardware/radio/RadioManager$BandDescriptor;->getSpacing()I

    move-result v5

    iget-boolean v6, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    iget-boolean v7, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    iget-boolean v8, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    iget-boolean v9, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    iget-boolean v10, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroid/hardware/radio/RadioManager$FmBandConfig;-><init>(IIIIIZZZZZ)V

    .line 1219
    .local v0, "config":Landroid/hardware/radio/RadioManager$FmBandConfig;
    return-object v0
.end method

.method public setAf(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1254
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mAf:Z

    .line 1255
    return-object p0
.end method

.method public setEa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1263
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mEa:Z

    .line 1264
    return-object p0
.end method

.method public setRds(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1236
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mRds:Z

    .line 1237
    return-object p0
.end method

.method public setStereo(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1227
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mStereo:Z

    .line 1228
    return-object p0
.end method

.method public setTa(Z)Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;
    .locals 0
    .param p1, "state"    # Z

    .line 1245
    iput-boolean p1, p0, Landroid/hardware/radio/RadioManager$FmBandConfig$Builder;->mTa:Z

    .line 1246
    return-object p0
.end method

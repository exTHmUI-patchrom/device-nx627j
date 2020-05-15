.class public Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;
.super Landroid/telephony/ims/feature/ImsFeature$Capabilities;
.source "MmTelFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/feature/MmTelFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MmTelCapabilities"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities$MmTelCapability;
    }
.end annotation


# static fields
.field public static final CAPABILITY_TYPE_SMS:I = 0x8

.field public static final CAPABILITY_TYPE_UT:I = 0x4

.field public static final CAPABILITY_TYPE_VIDEO:I = 0x2

.field public static final CAPABILITY_TYPE_VOICE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 233
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 234
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .line 240
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 241
    iput p1, p0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/telephony/ims/feature/ImsFeature$Capabilities;)V
    .locals 1
    .param p1, "c"    # Landroid/telephony/ims/feature/ImsFeature$Capabilities;

    .line 236
    invoke-direct {p0}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;-><init>()V

    .line 237
    iget v0, p1, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->mCapabilities:I

    iput v0, p0, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->mCapabilities:I

    .line 238
    return-void
.end method


# virtual methods
.method public final addCapabilities(I)V
    .locals 0
    .param p1, "capabilities"    # I

    .line 276
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->addCapabilities(I)V

    .line 277
    return-void
.end method

.method public final isCapable(I)Z
    .locals 1
    .param p1, "capabilities"    # I

    .line 286
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->isCapable(I)Z

    move-result v0

    return v0
.end method

.method public final removeCapabilities(I)V
    .locals 0
    .param p1, "capability"    # I

    .line 281
    invoke-super {p0, p1}, Landroid/telephony/ims/feature/ImsFeature$Capabilities;->removeCapabilities(I)V

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MmTel Capabilities - ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Voice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 294
    const-string v1, " Video: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 296
    const-string v1, " UT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 298
    const-string v1, " SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/telephony/ims/feature/MmTelFeature$MmTelCapabilities;->isCapable(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 300
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

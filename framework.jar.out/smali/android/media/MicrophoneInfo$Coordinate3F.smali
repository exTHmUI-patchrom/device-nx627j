.class public final Landroid/media/MicrophoneInfo$Coordinate3F;
.super Ljava/lang/Object;
.source "MicrophoneInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MicrophoneInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Coordinate3F"
.end annotation


# instance fields
.field public final x:F

.field public final y:F

.field public final z:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput p1, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    .line 382
    iput p2, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    .line 383
    iput p3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    .line 384
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 388
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 389
    return v0

    .line 391
    :cond_0
    instance-of v1, p1, Landroid/media/MicrophoneInfo$Coordinate3F;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 392
    return v2

    .line 394
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MicrophoneInfo$Coordinate3F;

    .line 395
    .local v1, "other":Landroid/media/MicrophoneInfo$Coordinate3F;
    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->x:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->y:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    iget v3, p0, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    iget v4, v1, Landroid/media/MicrophoneInfo$Coordinate3F;->z:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

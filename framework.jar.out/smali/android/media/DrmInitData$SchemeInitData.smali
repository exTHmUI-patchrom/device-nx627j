.class public final Landroid/media/DrmInitData$SchemeInitData;
.super Ljava/lang/Object;
.source "DrmInitData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/DrmInitData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchemeInitData"
.end annotation


# instance fields
.field public final data:[B

.field public final mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .param p1, "mimeType"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    .line 67
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Landroid/media/DrmInitData$SchemeInitData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 72
    return v1

    .line 74
    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    .line 75
    return v0

    .line 78
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/media/DrmInitData$SchemeInitData;

    .line 79
    .local v2, "other":Landroid/media/DrmInitData$SchemeInitData;
    iget-object v3, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    iget-object v4, v2, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 84
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.class Landroid/media/AudioHandle;
.super Ljava/lang/Object;
.source "AudioHandle.java"


# instance fields
.field private final mId:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "id"    # I

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Landroid/media/AudioHandle;->mId:I

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    instance-of v1, p1, Landroid/media/AudioHandle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    move-object v1, p1

    check-cast v1, Landroid/media/AudioHandle;

    .line 42
    .local v1, "ah":Landroid/media/AudioHandle;
    iget v2, p0, Landroid/media/AudioHandle;->mId:I

    invoke-virtual {v1}, Landroid/media/AudioHandle;->id()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0

    .line 39
    .end local v1    # "ah":Landroid/media/AudioHandle;
    :cond_2
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method id()I
    .locals 1

    .line 33
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 52
    iget v0, p0, Landroid/media/AudioHandle;->mId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

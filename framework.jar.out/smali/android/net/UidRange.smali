.class public final Landroid/net/UidRange;
.super Ljava/lang/Object;
.source "UidRange.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/UidRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final start:I

.field public final stop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 104
    new-instance v0, Landroid/net/UidRange$1;

    invoke-direct {v0}, Landroid/net/UidRange$1;-><init>()V

    sput-object v0, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "startUid"    # I
    .param p2, "stopUid"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-ltz p1, :cond_2

    .line 35
    if-ltz p2, :cond_1

    .line 36
    if-gt p1, p2, :cond_0

    .line 37
    iput p1, p0, Landroid/net/UidRange;->start:I

    .line 38
    iput p2, p0, Landroid/net/UidRange;->stop:I

    .line 39
    return-void

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid UID range."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid stop UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start UID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createForUser(I)Landroid/net/UidRange;
    .locals 4
    .param p0, "userId"    # I

    .line 42
    new-instance v0, Landroid/net/UidRange;

    const v1, 0x186a0

    mul-int v2, p0, v1

    add-int/lit8 v3, p0, 0x1

    mul-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/net/UidRange;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public contains(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 50
    iget v0, p0, Landroid/net/UidRange;->start:I

    if-gt v0, p1, :cond_0

    iget v0, p0, Landroid/net/UidRange;->stop:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsRange(Landroid/net/UidRange;)Z
    .locals 2
    .param p1, "other"    # Landroid/net/UidRange;

    .line 64
    iget v0, p0, Landroid/net/UidRange;->start:I

    iget v1, p1, Landroid/net/UidRange;->start:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/net/UidRange;->stop:I

    iget v1, p0, Landroid/net/UidRange;->stop:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public count()I
    .locals 2

    .line 57
    iget v0, p0, Landroid/net/UidRange;->stop:I

    const/4 v1, 0x1

    add-int/2addr v1, v0

    iget v0, p0, Landroid/net/UidRange;->start:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public describeContents()I
    .locals 1

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 78
    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Landroid/net/UidRange;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 81
    move-object v1, p1

    check-cast v1, Landroid/net/UidRange;

    .line 82
    .local v1, "other":Landroid/net/UidRange;
    iget v3, p0, Landroid/net/UidRange;->start:I

    iget v4, v1, Landroid/net/UidRange;->start:I

    if-ne v3, v4, :cond_1

    iget v3, p0, Landroid/net/UidRange;->stop:I

    iget v4, v1, Landroid/net/UidRange;->stop:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 84
    .end local v1    # "other":Landroid/net/UidRange;
    :cond_2
    return v2
.end method

.method public getStartUser()I
    .locals 2

    .line 46
    iget v0, p0, Landroid/net/UidRange;->start:I

    const v1, 0x186a0

    div-int/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 69
    const/16 v0, 0x11

    .line 70
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    iget v3, p0, Landroid/net/UidRange;->start:I

    add-int/2addr v2, v3

    .line 71
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    iget v0, p0, Landroid/net/UidRange;->stop:I

    add-int/2addr v1, v0

    .line 72
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/net/UidRange;->start:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget v0, p0, Landroid/net/UidRange;->stop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    return-void
.end method

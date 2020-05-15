.class public final Landroid/app/Vr2dDisplayProperties;
.super Ljava/lang/Object;
.source "Vr2dDisplayProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Vr2dDisplayProperties$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/Vr2dDisplayProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_VIRTUAL_DISPLAY_ENABLED:I = 0x1


# instance fields
.field private final mAddedFlags:I

.field private final mDpi:I

.field private final mHeight:I

.field private final mRemovedFlags:I

.field private final mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Landroid/app/Vr2dDisplayProperties$1;

    invoke-direct {v0}, Landroid/app/Vr2dDisplayProperties$1;-><init>()V

    sput-object v0, Landroid/app/Vr2dDisplayProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I

    .line 45
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    .line 46
    return-void
.end method

.method private constructor <init>(IIIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "dpi"    # I
    .param p4, "flags"    # I
    .param p5, "removedFlags"    # I

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput p1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 50
    iput p2, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 51
    iput p3, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 52
    iput p4, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 53
    iput p5, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 54
    return-void
.end method

.method synthetic constructor <init>(IIIIILandroid/app/Vr2dDisplayProperties$1;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Landroid/app/Vr2dDisplayProperties$1;

    .line 29
    invoke-direct/range {p0 .. p5}, Landroid/app/Vr2dDisplayProperties;-><init>(IIIII)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 122
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/Vr2dDisplayProperties$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/app/Vr2dDisplayProperties$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/app/Vr2dDisplayProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static toReadableFlags(I)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # I

    .line 149
    const-string/jumbo v0, "{"

    .line 150
    .local v0, "retval":Ljava/lang/String;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "enabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 153
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 78
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    move-object v2, p1

    check-cast v2, Landroid/app/Vr2dDisplayProperties;

    .line 82
    .local v2, "that":Landroid/app/Vr2dDisplayProperties;
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getFlags()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getFlags()I

    move-result v4

    if-eq v3, v4, :cond_2

    return v1

    .line 83
    :cond_2
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getRemovedFlags()I

    move-result v4

    if-eq v3, v4, :cond_3

    return v1

    .line 84
    :cond_3
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v4

    if-eq v3, v4, :cond_4

    return v1

    .line 85
    :cond_4
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_5

    return v1

    .line 86
    :cond_5
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v4

    if-ne v3, v4, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    :goto_0
    return v0

    .line 78
    .end local v2    # "that":Landroid/app/Vr2dDisplayProperties;
    :cond_7
    :goto_1
    return v1
.end method

.method public getDpi()I
    .locals 1

    .line 137
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    return v0
.end method

.method public getFlags()I
    .locals 1

    .line 141
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    return v0
.end method

.method public getRemovedFlags()I
    .locals 1

    .line 145
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 129
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 58
    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getWidth()I

    move-result v0

    .line 59
    .local v0, "result":I
    const/16 v1, 0x1f

    mul-int v2, v1, v0

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 60
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/app/Vr2dDisplayProperties;->getDpi()I

    move-result v0

    add-int/2addr v1, v0

    .line 61
    .end local v2    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Vr2dDisplayProperties{mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    .line 70
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", removed_flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    .line 71
    invoke-static {v1}, Landroid/app/Vr2dDisplayProperties;->toReadableFlags(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mDpi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mAddedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Landroid/app/Vr2dDisplayProperties;->mRemovedFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method

.class public final Landroid/telephony/RadioAccessSpecifier;
.super Ljava/lang/Object;
.source "RadioAccessSpecifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/RadioAccessSpecifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBands:[I

.field private mChannels:[I

.field private mRadioAccessNetwork:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Landroid/telephony/RadioAccessSpecifier$1;

    invoke-direct {v0}, Landroid/telephony/RadioAccessSpecifier$1;-><init>()V

    sput-object v0, Landroid/telephony/RadioAccessSpecifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I[I)V
    .locals 2
    .param p1, "ran"    # I
    .param p2, "bands"    # [I
    .param p3, "channels"    # [I

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    .line 75
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 76
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    goto :goto_0

    .line 78
    :cond_0
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 80
    :goto_0
    if-eqz p3, :cond_1

    .line 81
    invoke-virtual {p3}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    goto :goto_1

    .line 83
    :cond_1
    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 85
    :goto_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telephony/RadioAccessSpecifier$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/telephony/RadioAccessSpecifier$1;

    .line 29
    invoke-direct {p0, p1}, Landroid/telephony/RadioAccessSpecifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x0

    :try_start_0
    move-object v1, p1

    check-cast v1, Landroid/telephony/RadioAccessSpecifier;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v1, "ras":Landroid/telephony/RadioAccessSpecifier;
    nop

    .line 150
    nop

    .line 153
    if-nez p1, :cond_0

    .line 154
    return v0

    .line 157
    :cond_0
    iget v2, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    iget v3, v1, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 158
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    iget-object v3, v1, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 159
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    nop

    .line 157
    :cond_1
    return v0

    .line 149
    .end local v1    # "ras":Landroid/telephony/RadioAccessSpecifier;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/ClassCastException;
    return v0
.end method

.method public getBands()[I
    .locals 1

    .line 104
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getChannels()[I
    .locals 1

    .line 109
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    :goto_0
    return-object v0
.end method

.method public getRadioAccessNetwork()I
    .locals 1

    .line 93
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 164
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    .line 165
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x25

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    .line 166
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x27

    add-int/2addr v0, v1

    .line 164
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    iget v0, p0, Landroid/telephony/RadioAccessSpecifier;->mRadioAccessNetwork:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mBands:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 134
    iget-object v0, p0, Landroid/telephony/RadioAccessSpecifier;->mChannels:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 135
    return-void
.end method

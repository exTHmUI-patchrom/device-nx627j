.class public Landroid/speech/tts/Voice;
.super Ljava/lang/Object;
.source "Voice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation
.end field

.field public static final LATENCY_HIGH:I = 0x190

.field public static final LATENCY_LOW:I = 0xc8

.field public static final LATENCY_NORMAL:I = 0x12c

.field public static final LATENCY_VERY_HIGH:I = 0x1f4

.field public static final LATENCY_VERY_LOW:I = 0x64

.field public static final QUALITY_HIGH:I = 0x190

.field public static final QUALITY_LOW:I = 0xc8

.field public static final QUALITY_NORMAL:I = 0x12c

.field public static final QUALITY_VERY_HIGH:I = 0x1f4

.field public static final QUALITY_VERY_LOW:I = 0x64


# instance fields
.field private final mFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLatency:I

.field private final mLocale:Ljava/util/Locale;

.field private final mName:Ljava/lang/String;

.field private final mQuality:I

.field private final mRequiresNetworkConnection:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 109
    new-instance v0, Landroid/speech/tts/Voice$1;

    invoke-direct {v0}, Landroid/speech/tts/Voice$1;-><init>()V

    sput-object v0, Landroid/speech/tts/Voice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    .line 91
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 92
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/speech/tts/Voice$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/speech/tts/Voice$1;

    .line 32
    invoke-direct {p0, p1}, Landroid/speech/tts/Voice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;IIZLjava/util/Set;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "quality"    # I
    .param p4, "latency"    # I
    .param p5, "requiresNetworkConnection"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Locale;",
            "IIZ",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p6, "features":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    .line 77
    iput-object p2, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    .line 78
    iput p3, p0, Landroid/speech/tts/Voice;->mQuality:I

    .line 79
    iput p4, p0, Landroid/speech/tts/Voice;->mLatency:I

    .line 80
    iput-boolean p5, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    .line 81
    iput-object p6, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    .line 82
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 212
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 213
    return v0

    .line 215
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 216
    return v1

    .line 218
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 219
    return v1

    .line 221
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/speech/tts/Voice;

    .line 222
    .local v2, "other":Landroid/speech/tts/Voice;
    iget-object v3, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-nez v3, :cond_3

    .line 223
    iget-object v3, v2, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    if-eqz v3, :cond_4

    .line 224
    return v1

    .line 226
    :cond_3
    iget-object v3, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    iget-object v4, v2, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 227
    return v1

    .line 229
    :cond_4
    iget v3, p0, Landroid/speech/tts/Voice;->mLatency:I

    iget v4, v2, Landroid/speech/tts/Voice;->mLatency:I

    if-eq v3, v4, :cond_5

    .line 230
    return v1

    .line 232
    :cond_5
    iget-object v3, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v3, :cond_6

    .line 233
    iget-object v3, v2, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-eqz v3, :cond_7

    .line 234
    return v1

    .line 236
    :cond_6
    iget-object v3, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    iget-object v4, v2, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 237
    return v1

    .line 239
    :cond_7
    iget-object v3, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 240
    iget-object v3, v2, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-eqz v3, :cond_9

    .line 241
    return v1

    .line 243
    :cond_8
    iget-object v3, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    iget-object v4, v2, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 244
    return v1

    .line 246
    :cond_9
    iget v3, p0, Landroid/speech/tts/Voice;->mQuality:I

    iget v4, v2, Landroid/speech/tts/Voice;->mQuality:I

    if-eq v3, v4, :cond_a

    .line 247
    return v1

    .line 249
    :cond_a
    iget-boolean v3, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    iget-boolean v4, v2, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eq v3, v4, :cond_b

    .line 250
    return v1

    .line 252
    :cond_b
    return v0
.end method

.method public getFeatures()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    return-object v0
.end method

.method public getLatency()I
    .locals 1

    .line 150
    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    return v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .line 126
    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    .line 138
    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 199
    const/16 v0, 0x1f

    .line 200
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 201
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    const/4 v5, 0x0

    if-nez v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    iget-object v4, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->hashCode()I

    move-result v4

    :goto_0
    add-int/2addr v3, v4

    .line 202
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int v1, v2, v3

    iget v4, p0, Landroid/speech/tts/Voice;->mLatency:I

    add-int/2addr v1, v4

    .line 203
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget-object v4, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    if-nez v4, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v3, v4

    .line 204
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int v1, v2, v3

    iget-object v4, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    :goto_2
    add-int/2addr v1, v5

    .line 205
    .end local v3    # "result":I
    .restart local v1    # "result":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/speech/tts/Voice;->mQuality:I

    add-int/2addr v3, v4

    .line 206
    .end local v1    # "result":I
    .restart local v3    # "result":I
    mul-int/2addr v2, v3

    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    if-eqz v1, :cond_3

    const/16 v1, 0x4cf

    goto :goto_3

    :cond_3
    const/16 v1, 0x4d5

    :goto_3
    add-int/2addr v2, v1

    .line 207
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isNetworkConnectionRequired()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 188
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Voice[Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", locale: "

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quality: "

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", latency: "

    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requiresNetwork: "

    .line 192
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", features: "

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 188
    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/speech/tts/Voice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/speech/tts/Voice;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 98
    iget v0, p0, Landroid/speech/tts/Voice;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Landroid/speech/tts/Voice;->mLatency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-boolean v0, p0, Landroid/speech/tts/Voice;->mRequiresNetworkConnection:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/speech/tts/Voice;->mFeatures:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 102
    return-void
.end method

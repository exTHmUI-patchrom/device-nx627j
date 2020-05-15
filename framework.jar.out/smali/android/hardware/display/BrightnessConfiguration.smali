.class public final Landroid/hardware/display/BrightnessConfiguration;
.super Ljava/lang/Object;
.source "BrightnessConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:Ljava/lang/String;

.field private final mLux:[F

.field private final mNits:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Landroid/hardware/display/BrightnessConfiguration$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessConfiguration$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>([F[FLjava/lang/String;)V
    .locals 0
    .param p1, "lux"    # [F
    .param p2, "nits"    # [F
    .param p3, "description"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    .line 41
    iput-object p2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    .line 42
    iput-object p3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 43
    return-void
.end method

.method synthetic constructor <init>([F[FLjava/lang/String;Landroid/hardware/display/BrightnessConfiguration$1;)V
    .locals 0
    .param p1, "x0"    # [F
    .param p2, "x1"    # [F
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/hardware/display/BrightnessConfiguration$1;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/display/BrightnessConfiguration;-><init>([F[FLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 110
    return v0

    .line 112
    :cond_0
    instance-of v1, p1, Landroid/hardware/display/BrightnessConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 113
    return v2

    .line 115
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    .line 116
    .local v1, "other":Landroid/hardware/display/BrightnessConfiguration;
    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    iget-object v4, v1, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    .line 117
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 116
    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getCurve()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[F[F>;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 98
    const/4 v0, 0x1

    .line 99
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v1, v2

    .line 100
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([F)I

    move-result v2

    add-int/2addr v0, v2

    .line 101
    .end local v1    # "result":I
    .restart local v0    # "result":I
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 102
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 104
    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BrightnessConfiguration{["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    array-length v1, v1

    .line 82
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 83
    if-eqz v2, :cond_0

    .line 84
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    const-string v3, "("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v2    # "i":I
    :cond_1
    const-string v2, "], \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 90
    iget-object v2, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    const-string v2, "\'}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 68
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mLux:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 69
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mNits:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 70
    iget-object v0, p0, Landroid/hardware/display/BrightnessConfiguration;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 71
    return-void
.end method

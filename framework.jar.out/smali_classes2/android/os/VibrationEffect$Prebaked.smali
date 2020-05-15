.class public Landroid/os/VibrationEffect$Prebaked;
.super Landroid/os/VibrationEffect;
.source "VibrationEffect.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prebaked"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Prebaked;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mEffectId:I

.field private mEffectStrength:I

.field private final mFallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 737
    new-instance v0, Landroid/os/VibrationEffect$Prebaked$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Prebaked$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Prebaked;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1
    .param p1, "effectId"    # I
    .param p2, "fallback"    # Z

    .line 628
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 629
    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    .line 630
    iput-boolean p2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    .line 631
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    .line 632
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 624
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/os/VibrationEffect$Prebaked;-><init>(IZ)V

    .line 625
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    .line 626
    return-void
.end method

.method private static isValidEffectStrength(I)Z
    .locals 1
    .param p0, "strength"    # I

    .line 669
    packed-switch p0, :pswitch_data_0

    .line 675
    const/4 v0, 0x0

    return v0

    .line 673
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 703
    instance-of v0, p1, Landroid/os/VibrationEffect$Prebaked;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 704
    return v1

    .line 706
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    .line 707
    .local v0, "other":Landroid/os/VibrationEffect$Prebaked;
    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    iget v3, v0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    iget-boolean v3, v0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    iget v3, v0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public getDuration()J
    .locals 2

    .line 648
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getEffectStrength()I
    .locals 1

    .line 665
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 635
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 714
    const/16 v0, 0x11

    .line 715
    .local v0, "result":I
    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    const/16 v2, 0x25

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 716
    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 717
    return v0
.end method

.method public setEffectStrength(I)V
    .locals 3
    .param p1, "strength"    # I

    .line 655
    invoke-static {p1}, Landroid/os/VibrationEffect$Prebaked;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 658
    iput p1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    .line 659
    return-void

    .line 656
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid effect strength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public shouldFallback()Z
    .locals 1

    .line 643
    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prebaked{mEffectId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate()V
    .locals 3

    .line 681
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    packed-switch v0, :pswitch_data_0

    .line 690
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    sget-object v1, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-lt v0, v1, :cond_1

    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    sget-object v1, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    sget-object v2, Landroid/os/VibrationEffect$Prebaked;->RINGTONES:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-gt v0, v1, :cond_1

    goto :goto_0

    .line 688
    :pswitch_0
    nop

    .line 695
    :goto_0
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-static {v0}, Landroid/os/VibrationEffect$Prebaked;->isValidEffectStrength(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    return-void

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown prebaked effect strength (value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 691
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown prebaked effect type (value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 731
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 732
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 733
    iget-boolean v0, p0, Landroid/os/VibrationEffect$Prebaked;->mFallback:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 734
    iget v0, p0, Landroid/os/VibrationEffect$Prebaked;->mEffectStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 735
    return-void
.end method

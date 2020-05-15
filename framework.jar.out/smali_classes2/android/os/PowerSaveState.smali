.class public Landroid/os/PowerSaveState;
.super Ljava/lang/Object;
.source "PowerSaveState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/PowerSaveState$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/PowerSaveState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final batterySaverEnabled:Z

.field public final brightnessFactor:F

.field public final globalBatterySaverEnabled:Z

.field public final gpsMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Landroid/os/PowerSaveState$1;

    invoke-direct {v0}, Landroid/os/PowerSaveState$1;-><init>()V

    sput-object v0, Landroid/os/PowerSaveState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    nop

    :cond_1
    iput-boolean v1, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/os/PowerSaveState$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/os/PowerSaveState$Builder;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$000(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 43
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$100(Landroid/os/PowerSaveState$Builder;)I

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    .line 44
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$200(Landroid/os/PowerSaveState$Builder;)F

    move-result v0

    iput v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    .line 45
    invoke-static {p1}, Landroid/os/PowerSaveState$Builder;->access$300(Landroid/os/PowerSaveState$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 62
    iget-boolean v0, p0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    iget-boolean v0, p0, Landroid/os/PowerSaveState;->globalBatterySaverEnabled:Z

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 64
    iget v0, p0, Landroid/os/PowerSaveState;->gpsMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    iget v0, p0, Landroid/os/PowerSaveState;->brightnessFactor:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 66
    return-void
.end method

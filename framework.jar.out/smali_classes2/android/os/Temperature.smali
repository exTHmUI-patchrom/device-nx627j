.class public Landroid/os/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/Temperature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mType:I

.field private mValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Landroid/os/Temperature$1;

    invoke-direct {v0}, Landroid/os/Temperature$1;-><init>()V

    sput-object v0, Landroid/os/Temperature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    const v0, -0x800001

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, v1}, Landroid/os/Temperature;-><init>(FI)V

    .line 35
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 0
    .param p1, "value"    # F
    .param p2, "type"    # I

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput p1, p0, Landroid/os/Temperature;->mValue:F

    .line 39
    iput p2, p0, Landroid/os/Temperature;->mType:I

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "p"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/Temperature;->readFromParcel(Landroid/os/Parcel;)V

    .line 67
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/Temperature$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/os/Temperature$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/os/Temperature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .line 56
    iget v0, p0, Landroid/os/Temperature;->mType:I

    return v0
.end method

.method public getValue()F
    .locals 1

    .line 47
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mValue:F

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/Temperature;->mType:I

    .line 76
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget v0, p0, Landroid/os/Temperature;->mValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    iget v0, p0, Landroid/os/Temperature;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    return-void
.end method

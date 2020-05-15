.class public final Landroid/hardware/display/Curve;
.super Ljava/lang/Object;
.source "Curve.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/Curve;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Landroid/hardware/display/Curve$1;

    invoke-direct {v0}, Landroid/hardware/display/Curve$1;-><init>()V

    sput-object v0, Landroid/hardware/display/Curve;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Landroid/hardware/display/Curve;->mX:[F

    .line 29
    iput-object p2, p0, Landroid/hardware/display/Curve;->mY:[F

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public getX()[F
    .locals 1

    .line 33
    iget-object v0, p0, Landroid/hardware/display/Curve;->mX:[F

    return-object v0
.end method

.method public getY()[F
    .locals 1

    .line 37
    iget-object v0, p0, Landroid/hardware/display/Curve;->mY:[F

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 54
    iget-object v0, p0, Landroid/hardware/display/Curve;->mX:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 55
    iget-object v0, p0, Landroid/hardware/display/Curve;->mY:[F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 56
    return-void
.end method

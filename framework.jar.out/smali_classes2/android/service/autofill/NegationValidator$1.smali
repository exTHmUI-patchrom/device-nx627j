.class Landroid/service/autofill/NegationValidator$1;
.super Ljava/lang/Object;
.source "NegationValidator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/NegationValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/NegationValidator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/NegationValidator;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 71
    new-instance v0, Landroid/service/autofill/NegationValidator;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/service/autofill/InternalValidator;

    invoke-direct {v0, v1}, Landroid/service/autofill/NegationValidator;-><init>(Landroid/service/autofill/InternalValidator;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/service/autofill/NegationValidator$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/NegationValidator;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/NegationValidator;
    .locals 1
    .param p1, "size"    # I

    .line 76
    new-array v0, p1, [Landroid/service/autofill/NegationValidator;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 68
    invoke-virtual {p0, p1}, Landroid/service/autofill/NegationValidator$1;->newArray(I)[Landroid/service/autofill/NegationValidator;

    move-result-object p1

    return-object p1
.end method

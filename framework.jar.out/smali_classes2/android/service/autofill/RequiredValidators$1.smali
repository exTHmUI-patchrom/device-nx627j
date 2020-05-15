.class Landroid/service/autofill/RequiredValidators$1;
.super Ljava/lang/Object;
.source "RequiredValidators.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/RequiredValidators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/RequiredValidators;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RequiredValidators;
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 85
    new-instance v0, Landroid/service/autofill/RequiredValidators;

    const-class v1, Landroid/service/autofill/InternalValidator;

    .line 86
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;Ljava/lang/Class;)[Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, [Landroid/service/autofill/InternalValidator;

    invoke-direct {v0, v1}, Landroid/service/autofill/RequiredValidators;-><init>([Landroid/service/autofill/InternalValidator;)V

    .line 85
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/autofill/RequiredValidators$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/RequiredValidators;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/RequiredValidators;
    .locals 1
    .param p1, "size"    # I

    .line 91
    new-array v0, p1, [Landroid/service/autofill/RequiredValidators;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 82
    invoke-virtual {p0, p1}, Landroid/service/autofill/RequiredValidators$1;->newArray(I)[Landroid/service/autofill/RequiredValidators;

    move-result-object p1

    return-object p1
.end method

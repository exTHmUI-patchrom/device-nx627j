.class Landroid/service/autofill/DateValueSanitizer$1;
.super Ljava/lang/Object;
.source "DateValueSanitizer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/autofill/DateValueSanitizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/service/autofill/DateValueSanitizer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateValueSanitizer;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 115
    new-instance v0, Landroid/service/autofill/DateValueSanitizer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormat;

    invoke-direct {v0, v1}, Landroid/service/autofill/DateValueSanitizer;-><init>(Landroid/icu/text/DateFormat;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/service/autofill/DateValueSanitizer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/service/autofill/DateValueSanitizer;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/service/autofill/DateValueSanitizer;
    .locals 1
    .param p1, "size"    # I

    .line 120
    new-array v0, p1, [Landroid/service/autofill/DateValueSanitizer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 112
    invoke-virtual {p0, p1}, Landroid/service/autofill/DateValueSanitizer$1;->newArray(I)[Landroid/service/autofill/DateValueSanitizer;

    move-result-object p1

    return-object p1
.end method

.class Landroid/view/textclassifier/TextClassificationSessionId$1;
.super Ljava/lang/Object;
.source "TextClassificationSessionId.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassificationSessionId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/view/textclassifier/TextClassificationSessionId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 122
    new-instance v0, Landroid/view/textclassifier/TextClassificationSessionId;

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/view/textclassifier/TextClassificationSessionId;-><init>(Ljava/lang/String;)V

    .line 122
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassificationSessionId$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/view/textclassifier/TextClassificationSessionId;
    .locals 1
    .param p1, "size"    # I

    .line 128
    new-array v0, p1, [Landroid/view/textclassifier/TextClassificationSessionId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Landroid/view/textclassifier/TextClassificationSessionId$1;->newArray(I)[Landroid/view/textclassifier/TextClassificationSessionId;

    move-result-object p1

    return-object p1
.end method

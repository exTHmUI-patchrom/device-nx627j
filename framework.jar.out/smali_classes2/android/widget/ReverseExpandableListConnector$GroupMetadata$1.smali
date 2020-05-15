.class Landroid/widget/ReverseExpandableListConnector$GroupMetadata$1;
.super Ljava/lang/Object;
.source "ReverseExpandableListConnector.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/widget/ReverseExpandableListConnector$GroupMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 932
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 935
    nop

    .line 936
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 937
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 938
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 939
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 935
    invoke-static {v0, v1, v2, v3, v4}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata;->obtain(IIIJ)Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    move-result-object v0

    .line 940
    .local v0, "gm":Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata$1;->createFromParcel(Landroid/os/Parcel;)Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/widget/ReverseExpandableListConnector$GroupMetadata;
    .locals 1
    .param p1, "size"    # I

    .line 944
    new-array v0, p1, [Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 932
    invoke-virtual {p0, p1}, Landroid/widget/ReverseExpandableListConnector$GroupMetadata$1;->newArray(I)[Landroid/widget/ReverseExpandableListConnector$GroupMetadata;

    move-result-object p1

    return-object p1
.end method

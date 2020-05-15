.class public final Landroid/print/PrintJobId;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/print/PrintJobId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 112
    new-instance v0, Landroid/print/PrintJobId$1;

    invoke-direct {v0}, Landroid/print/PrintJobId$1;-><init>()V

    sput-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 109
    new-instance v0, Landroid/print/PrintJobId;

    invoke-direct {v0, p0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 64
    return v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 67
    return v1

    .line 69
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 70
    return v1

    .line 72
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/print/PrintJobId;

    .line 73
    .local v2, "other":Landroid/print/PrintJobId;
    iget-object v3, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    iget-object v4, v2, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 74
    return v1

    .line 76
    :cond_3
    return v0
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 55
    const/16 v0, 0x1f

    .line 56
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 57
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    add-int/2addr v2, v3

    .line 58
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 81
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.class public final Landroid/view/autofill/AutofillId;
.super Ljava/lang/Object;
.source "AutofillId.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/autofill/AutofillId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mViewId:I

.field private final mVirtual:Z

.field private final mVirtualId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 121
    new-instance v0, Landroid/view/autofill/AutofillId$1;

    invoke-direct {v0}, Landroid/view/autofill/AutofillId$1;-><init>()V

    sput-object v0, Landroid/view/autofill/AutofillId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 36
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "parentId"    # I
    .param p2, "virtualChildId"    # I

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 51
    iput p1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 52
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 53
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/autofill/AutofillId$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/view/autofill/AutofillId$1;

    .line 26
    invoke-direct {p0, p1}, Landroid/view/autofill/AutofillId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/autofill/AutofillId;I)V
    .locals 1
    .param p1, "parent"    # Landroid/view/autofill/AutofillId;
    .param p2, "virtualChildId"    # I

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    .line 44
    iget v0, p1, Landroid/view/autofill/AutofillId;->mViewId:I

    iput v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    .line 45
    iput p2, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    .line 46
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 85
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 86
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 87
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 88
    :cond_2
    move-object v2, p1

    check-cast v2, Landroid/view/autofill/AutofillId;

    .line 89
    .local v2, "other":Landroid/view/autofill/AutofillId;
    iget v3, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mViewId:I

    if-eq v3, v4, :cond_3

    return v1

    .line 90
    :cond_3
    iget v3, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    iget v4, v2, Landroid/view/autofill/AutofillId;->mVirtualId:I

    if-eq v3, v4, :cond_4

    return v1

    .line 91
    :cond_4
    return v0
.end method

.method public getViewId()I
    .locals 1

    .line 57
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    return v0
.end method

.method public getVirtualChildId()I
    .locals 1

    .line 62
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 76
    const/16 v0, 0x1f

    .line 77
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 78
    .local v1, "result":I
    const/16 v2, 0x1f

    mul-int v3, v2, v1

    iget v4, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    add-int/2addr v3, v4

    .line 79
    .end local v1    # "result":I
    .local v3, "result":I
    mul-int/2addr v2, v3

    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    add-int/2addr v2, v1

    .line 80
    .end local v3    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isVirtual()Z
    .locals 1

    .line 67
    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 97
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    if-eqz v1, :cond_0

    .line 98
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 110
    iget v0, p0, Landroid/view/autofill/AutofillId;->mViewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-boolean v0, p0, Landroid/view/autofill/AutofillId;->mVirtual:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Landroid/view/autofill/AutofillId;->mVirtualId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    return-void
.end method

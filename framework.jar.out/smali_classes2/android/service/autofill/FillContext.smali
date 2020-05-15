.class public final Landroid/service/autofill/FillContext;
.super Ljava/lang/Object;
.source "FillContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequestId:I

.field private final mStructure:Landroid/app/assist/AssistStructure;

.field private mViewNodeLookupTable:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/app/assist/AssistStructure$ViewNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 180
    new-instance v0, Landroid/service/autofill/FillContext$1;

    invoke-direct {v0}, Landroid/service/autofill/FillContext$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/app/assist/AssistStructure;)V
    .locals 0
    .param p1, "requestId"    # I
    .param p2, "structure"    # Landroid/app/assist/AssistStructure;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput p1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    .line 63
    iput-object p2, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    .line 64
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/assist/AssistStructure;

    invoke-direct {p0, v0, v1}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;)V

    .line 68
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/autofill/FillContext$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/service/autofill/FillContext$1;

    .line 49
    invoke-direct {p0, p1}, Landroid/service/autofill/FillContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public findViewNodesByAutofillIds([Landroid/view/autofill/AutofillId;)[Landroid/app/assist/AssistStructure$ViewNode;
    .locals 11
    .param p1, "ids"    # [Landroid/view/autofill/AutofillId;

    .line 117
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 118
    .local v0, "nodesToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/assist/AssistStructure$ViewNode;>;"
    array-length v1, p1

    new-array v1, v1, [Landroid/app/assist/AssistStructure$ViewNode;

    .line 121
    .local v1, "foundNodes":[Landroid/app/assist/AssistStructure$ViewNode;
    new-instance v2, Landroid/util/SparseIntArray;

    array-length v3, p1

    invoke-direct {v2, v3}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 123
    .local v2, "missingNodeIndexes":Landroid/util/SparseIntArray;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 124
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-eqz v5, :cond_1

    .line 125
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    aget-object v6, p1, v4

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v5

    .line 127
    .local v5, "lookupTableIndex":I
    if-ltz v5, :cond_0

    .line 128
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/assist/AssistStructure$ViewNode;

    aput-object v6, v1, v4

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 132
    .end local v5    # "lookupTableIndex":I
    :goto_1
    goto :goto_2

    .line 133
    :cond_1
    invoke-virtual {v2, v4, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 123
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 137
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v4}, Landroid/app/assist/AssistStructure;->getWindowNodeCount()I

    move-result v4

    .line 138
    .local v4, "numWindowNodes":I
    move v5, v3

    .local v5, "i":I
    :goto_3
    if-ge v5, v4, :cond_3

    .line 139
    iget-object v6, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v6, v5}, Landroid/app/assist/AssistStructure;->getWindowNodeAt(I)Landroid/app/assist/AssistStructure$WindowNode;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/assist/AssistStructure$WindowNode;->getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 138
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 142
    .end local v5    # "i":I
    :cond_3
    :goto_4
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_8

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 143
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/assist/AssistStructure$ViewNode;

    .line 145
    .local v5, "node":Landroid/app/assist/AssistStructure$ViewNode;
    move v6, v3

    .local v6, "i":I
    :goto_5
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 146
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 147
    .local v7, "index":I
    aget-object v8, p1, v7

    .line 149
    .local v8, "id":Landroid/view/autofill/AutofillId;
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 150
    aput-object v5, v1, v7

    .line 152
    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v9, :cond_4

    .line 153
    new-instance v9, Landroid/util/ArrayMap;

    array-length v10, p1

    invoke-direct {v9, v10}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 156
    :cond_4
    iget-object v9, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v9, v8, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 159
    goto :goto_6

    .line 145
    .end local v7    # "index":I
    .end local v8    # "id":Landroid/view/autofill/AutofillId;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 163
    .end local v6    # "i":I
    :cond_6
    :goto_6
    move v6, v3

    .restart local v6    # "i":I
    :goto_7
    invoke-virtual {v5}, Landroid/app/assist/AssistStructure$ViewNode;->getChildCount()I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 164
    invoke-virtual {v5, v6}, Landroid/app/assist/AssistStructure$ViewNode;->getChildAt(I)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 166
    .end local v5    # "node":Landroid/app/assist/AssistStructure$ViewNode;
    .end local v6    # "i":I
    :cond_7
    goto :goto_4

    .line 169
    :cond_8
    nop

    .local v3, "i":I
    :goto_8
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 170
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    if-nez v5, :cond_9

    .line 171
    new-instance v5, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    .line 174
    :cond_9
    iget-object v5, p0, Landroid/service/autofill/FillContext;->mViewNodeLookupTable:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    aget-object v6, p1, v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 177
    .end local v3    # "i":I
    :cond_a
    return-object v1
.end method

.method public getRequestId()I
    .locals 1

    .line 79
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    return v0
.end method

.method public getStructure()Landroid/app/assist/AssistStructure;
    .locals 1

    .line 86
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 91
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FillContext [reqId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 103
    iget v0, p0, Landroid/service/autofill/FillContext;->mRequestId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Landroid/service/autofill/FillContext;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 105
    return-void
.end method

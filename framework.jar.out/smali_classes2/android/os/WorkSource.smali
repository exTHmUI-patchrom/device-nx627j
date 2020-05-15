.class public Landroid/os/WorkSource;
.super Ljava/lang/Object;
.source "WorkSource.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/WorkSource$WorkChain;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/WorkSource;",
            ">;"
        }
    .end annotation
.end field

.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "WorkSource"

.field static sGoneWork:Landroid/os/WorkSource;

.field static sNewbWork:Landroid/os/WorkSource;

.field static final sTmpWorkSource:Landroid/os/WorkSource;


# instance fields
.field private mChains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation
.end field

.field mNames:[Ljava/lang/String;

.field mNum:I

.field mUids:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Landroid/os/WorkSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/WorkSource;-><init>(I)V

    sput-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    .line 1149
    new-instance v0, Landroid/os/WorkSource$1;

    invoke-direct {v0}, Landroid/os/WorkSource$1;-><init>()V

    sput-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 53
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "uid"    # I

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 88
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    aput v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 90
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 91
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    if-eqz p2, :cond_0

    .line 98
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 99
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    aput v3, v2, v0

    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 100
    new-array v1, v1, [Ljava/lang/String;

    aput-object p2, v1, v3

    const/4 v2, 0x0

    aput-object v2, v1, v0

    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 101
    iput-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 102
    return-void

    .line 96
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "numChains":I
    if-lez v0, :cond_0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 112
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const-class v2, Landroid/os/WorkSource$WorkChain;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    goto :goto_0

    .line 114
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 116
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/os/WorkSource;)V
    .locals 4
    .param p1, "orig"    # Landroid/os/WorkSource;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 62
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 63
    return-void

    .line 65
    :cond_0
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 66
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_2

    .line 67
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 68
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 70
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 71
    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 74
    :goto_1
    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 77
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 78
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_2

    .line 81
    :cond_3
    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 83
    :cond_4
    return-void
.end method

.method private static addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I

    .line 610
    if-nez p0, :cond_0

    .line 611
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1}, Landroid/os/WorkSource;-><init>(I)V

    return-object v0

    .line 613
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 614
    return-object p0
.end method

.method private static addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;
    .locals 1
    .param p0, "cur"    # Landroid/os/WorkSource;
    .param p1, "newUid"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .line 702
    if-nez p0, :cond_0

    .line 703
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p2}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 705
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 706
    return-object p0
.end method

.method private compare(Landroid/os/WorkSource;II)I
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "i1"    # I
    .param p3, "i2"    # I

    .line 694
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p2

    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    aget v1, v1, p3

    sub-int/2addr v0, v1

    .line 695
    .local v0, "diff":I
    if-eqz v0, :cond_0

    .line 696
    return v0

    .line 698
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v1, v1, p2

    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v2, v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public static diffChains(Landroid/os/WorkSource;Landroid/os/WorkSource;)[Ljava/util/ArrayList;
    .locals 7
    .param p0, "oldWs"    # Landroid/os/WorkSource;
    .param p1, "newWs"    # Landroid/os/WorkSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/WorkSource;",
            "Landroid/os/WorkSource;",
            ")[",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 1030
    const/4 v0, 0x0

    .line 1031
    .local v0, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    const/4 v1, 0x0

    .line 1037
    .local v1, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 1038
    move-object v2, v1

    move v1, v3

    .local v1, "i":I
    .local v2, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    :goto_0
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1039
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 1040
    .local v4, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1041
    :cond_0
    if-nez v2, :cond_1

    .line 1042
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 1044
    :cond_1
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1038
    .end local v4    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1049
    .end local v1    # "i":I
    :cond_3
    move-object v1, v2

    .end local v2    # "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    .local v1, "goneChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    :cond_4
    iget-object v2, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_9

    .line 1050
    move-object v2, v0

    move v0, v3

    .local v0, "i":I
    .local v2, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    :goto_1
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_8

    .line 1051
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/WorkSource$WorkChain;

    .line 1052
    .restart local v4    # "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 1053
    :cond_5
    if-nez v2, :cond_6

    .line 1054
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v2, v5

    .line 1056
    :cond_6
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    .end local v4    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1061
    .end local v0    # "i":I
    :cond_8
    move-object v0, v2

    .end local v2    # "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    .local v0, "newChains":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/WorkSource$WorkChain;>;"
    :cond_9
    if-nez v0, :cond_b

    if-eqz v1, :cond_a

    goto :goto_2

    .line 1065
    :cond_a
    const/4 v2, 0x0

    return-object v2

    .line 1062
    :cond_b
    :goto_2
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/util/ArrayList;

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    return-object v2
.end method

.method private insert(II)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "uid"    # I

    .line 773
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 774
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 775
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, v1

    .line 776
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 777
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 778
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 779
    .local v0, "newuids":[I
    if-lez p1, :cond_1

    .line 780
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v3, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 782
    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_2

    .line 783
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v1, p1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 785
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 786
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 787
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 788
    .end local v0    # "newuids":[I
    goto :goto_0

    .line 789
    :cond_3
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_4

    .line 790
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 792
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 793
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 795
    :goto_0
    return-void
.end method

.method private insert(IILjava/lang/String;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "uid"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 798
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 799
    const/4 v0, 0x4

    new-array v3, v0, [I

    iput-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    .line 800
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v3, v1

    .line 801
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 802
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, v1

    .line 803
    iput v2, p0, Landroid/os/WorkSource;->mNum:I

    goto :goto_0

    .line 804
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v3, v3

    if-lt v0, v3, :cond_3

    .line 805
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 806
    .local v0, "newuids":[I
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    .line 807
    .local v3, "newnames":[Ljava/lang/String;
    if-lez p1, :cond_1

    .line 808
    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-static {v4, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 809
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-static {v4, v1, v3, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 811
    :cond_1
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v1, :cond_2

    .line 812
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 813
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v5, p1

    invoke-static {v1, p1, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 815
    :cond_2
    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 816
    iput-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 817
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v1, p1

    .line 818
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v1, p1

    .line 819
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 820
    .end local v0    # "newuids":[I
    .end local v3    # "newnames":[Ljava/lang/String;
    goto :goto_0

    .line 821
    :cond_3
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-ge p1, v0, :cond_4

    .line 822
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 823
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v4, p1

    invoke-static {v0, p1, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 825
    :cond_4
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aput p2, v0, p1

    .line 826
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p3, v0, p1

    .line 827
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 829
    :goto_0
    return-void
.end method

.method public static isChainedBatteryAttributionEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "chained_battery_attribution_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private removeUids(Landroid/os/WorkSource;)Z
    .locals 9
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 524
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 525
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 526
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 527
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 528
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 529
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    .line 531
    .local v6, "i2":I
    :goto_0
    if-ge v5, v0, :cond_3

    if-ge v6, v2, :cond_3

    .line 534
    aget v7, v3, v6

    aget v8, v1, v5

    if-ne v7, v8, :cond_1

    .line 537
    add-int/lit8 v0, v0, -0x1

    .line 538
    const/4 v4, 0x1

    .line 539
    if-ge v5, v0, :cond_0

    add-int/lit8 v7, v5, 0x1

    sub-int v8, v0, v5

    invoke-static {v1, v7, v1, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 540
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 541
    :cond_1
    aget v7, v3, v6

    aget v8, v1, v5

    if-le v7, v8, :cond_2

    .line 543
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 546
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 550
    :cond_3
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 552
    return v4
.end method

.method private removeUidsAndNames(Landroid/os/WorkSource;)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 556
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 557
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 558
    .local v1, "uids1":[I
    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 559
    .local v2, "names1":[Ljava/lang/String;
    iget v3, p1, Landroid/os/WorkSource;->mNum:I

    .line 560
    .local v3, "N2":I
    iget-object v4, p1, Landroid/os/WorkSource;->mUids:[I

    .line 561
    .local v4, "uids2":[I
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 562
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 563
    .local v6, "changed":Z
    const/4 v7, 0x0

    .local v7, "i1":I
    const/4 v8, 0x0

    .line 565
    .local v8, "i2":I
    :goto_0
    if-ge v7, v0, :cond_4

    if-ge v8, v3, :cond_4

    .line 568
    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_1

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 571
    add-int/lit8 v0, v0, -0x1

    .line 572
    const/4 v6, 0x1

    .line 573
    if-ge v7, v0, :cond_0

    .line 574
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v1, v9, v1, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    add-int/lit8 v9, v7, 0x1

    sub-int v10, v0, v7

    invoke-static {v2, v9, v2, v7, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 577
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 578
    :cond_1
    aget v9, v4, v8

    aget v10, v1, v7

    if-gt v9, v10, :cond_3

    aget v9, v4, v8

    aget v10, v1, v7

    if-ne v9, v10, :cond_2

    aget-object v9, v5, v8

    aget-object v10, v2, v7

    .line 579
    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_2

    goto :goto_1

    .line 584
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 581
    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 588
    :cond_4
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 590
    return v6
.end method

.method private updateLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 594
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 595
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0

    .line 597
    :cond_0
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_2

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 598
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_2
    :goto_0
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    if-lez v0, :cond_4

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_3

    goto :goto_1

    .line 602
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_4
    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/os/WorkSource;->updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v0

    return v0
.end method

.method private updateUidsAndNamesLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 710
    iget v0, p1, Landroid/os/WorkSource;->mNum:I

    .line 711
    .local v0, "N2":I
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    .line 712
    .local v1, "uids2":[I
    iget-object v2, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 713
    .local v2, "names2":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 714
    .local v3, "changed":Z
    const/4 v4, 0x0

    .local v4, "i1":I
    const/4 v5, 0x0

    .line 717
    .local v5, "i2":I
    :goto_0
    iget v6, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v4, v6, :cond_1

    if-ge v5, v0, :cond_0

    goto :goto_1

    .line 768
    :cond_0
    return v3

    .line 720
    :cond_1
    :goto_1
    const/4 v6, -0x1

    .line 721
    .local v6, "diff":I
    iget v7, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v4, v7, :cond_a

    if-ge v5, v0, :cond_2

    invoke-direct {p0, p1, v4, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v7

    move v6, v7

    if-lez v7, :cond_2

    goto :goto_5

    .line 733
    :cond_2
    if-nez p2, :cond_4

    .line 735
    if-ge v5, v0, :cond_3

    if-nez v6, :cond_3

    .line 736
    add-int/lit8 v5, v5, 0x1

    .line 738
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 741
    :cond_4
    move v7, v4

    .line 742
    .local v4, "start":I
    .local v7, "i1":I
    :goto_2
    if-gez v6, :cond_7

    .line 745
    sget-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    aget v9, v9, v7

    iget-object v10, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v10, v10, v7

    invoke-static {v8, v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 746
    add-int/lit8 v7, v7, 0x1

    .line 747
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v7, v8, :cond_5

    .line 748
    goto :goto_4

    .line 750
    :cond_5
    if-ge v5, v0, :cond_6

    invoke-direct {p0, p1, v7, v5}, Landroid/os/WorkSource;->compare(Landroid/os/WorkSource;II)I

    move-result v8

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    :goto_3
    move v6, v8

    goto :goto_2

    .line 752
    :cond_7
    :goto_4
    if-ge v4, v7, :cond_8

    .line 753
    iget-object v8, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v9, p0, Landroid/os/WorkSource;->mUids:[I

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v7

    invoke-static {v8, v7, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    iget-object v8, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v9, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v10, p0, Landroid/os/WorkSource;->mNum:I

    sub-int/2addr v10, v7

    invoke-static {v8, v7, v9, v4, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 755
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    sub-int v9, v7, v4

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/os/WorkSource;->mNum:I

    .line 756
    move v7, v4

    .line 759
    :cond_8
    iget v8, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v7, v8, :cond_9

    if-nez v6, :cond_9

    .line 761
    add-int/lit8 v7, v7, 0x1

    .line 762
    add-int/lit8 v5, v5, 0x1

    .line 766
    .end local v6    # "diff":I
    .end local v7    # "i1":I
    .local v4, "i1":I
    :cond_9
    move v4, v7

    goto :goto_6

    .line 723
    .restart local v6    # "diff":I
    :cond_a
    :goto_5
    const/4 v3, 0x1

    .line 726
    aget v7, v1, v5

    aget-object v8, v2, v5

    invoke-direct {p0, v4, v7, v8}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 727
    if-eqz p3, :cond_b

    .line 728
    sget-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v8, v1, v5

    aget-object v9, v2, v5

    invoke-static {v7, v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;ILjava/lang/String;)Landroid/os/WorkSource;

    move-result-object v7

    sput-object v7, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 730
    :cond_b
    add-int/lit8 v4, v4, 0x1

    .line 731
    add-int/lit8 v5, v5, 0x1

    .line 766
    .end local v6    # "diff":I
    :goto_6
    goto/16 :goto_0
.end method

.method private updateUidsLocked(Landroid/os/WorkSource;ZZ)Z
    .locals 11
    .param p1, "other"    # Landroid/os/WorkSource;
    .param p2, "set"    # Z
    .param p3, "returnNewbs"    # Z

    .line 618
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 619
    .local v0, "N1":I
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 620
    .local v1, "uids1":[I
    iget v2, p1, Landroid/os/WorkSource;->mNum:I

    .line 621
    .local v2, "N2":I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 622
    .local v3, "uids2":[I
    const/4 v4, 0x0

    .line 623
    .local v4, "changed":Z
    const/4 v5, 0x0

    .local v5, "i1":I
    const/4 v6, 0x0

    move v7, v4

    move-object v4, v1

    move v1, v0

    move v0, v6

    .line 626
    .local v0, "i2":I
    .local v1, "N1":I
    .local v4, "uids1":[I
    .local v7, "changed":Z
    :goto_0
    if-lt v5, v1, :cond_1

    if-ge v0, v2, :cond_0

    goto :goto_1

    .line 684
    :cond_0
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 685
    iput-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    .line 687
    return v7

    .line 629
    :cond_1
    :goto_1
    if-ge v5, v1, :cond_9

    if-ge v0, v2, :cond_2

    aget v8, v3, v0

    aget v9, v4, v5

    if-ge v8, v9, :cond_2

    goto :goto_3

    .line 654
    :cond_2
    if-nez p2, :cond_4

    .line 657
    if-ge v0, v2, :cond_3

    aget v8, v3, v0

    aget v9, v4, v5

    if-ne v8, v9, :cond_3

    .line 658
    add-int/lit8 v0, v0, 0x1

    .line 660
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 663
    :cond_4
    move v8, v5

    .line 664
    .local v5, "start":I
    .local v8, "i1":I
    :goto_2
    if-ge v8, v1, :cond_6

    if-ge v0, v2, :cond_5

    aget v9, v3, v0

    aget v10, v4, v8

    if-le v9, v10, :cond_6

    .line 666
    :cond_5
    sget-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aget v10, v4, v8

    invoke-static {v9, v10}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v9

    sput-object v9, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 667
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 669
    :cond_6
    if-ge v5, v8, :cond_7

    .line 670
    sub-int v9, v1, v8

    invoke-static {v4, v8, v4, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 671
    sub-int v9, v8, v5

    sub-int/2addr v1, v9

    .line 672
    move v8, v5

    .line 675
    :cond_7
    if-ge v8, v1, :cond_8

    if-ge v0, v2, :cond_8

    aget v9, v3, v0

    aget v10, v4, v8

    if-ne v9, v10, :cond_8

    .line 677
    add-int/lit8 v8, v8, 0x1

    .line 678
    add-int/lit8 v0, v0, 0x1

    .line 680
    .end local v8    # "i1":I
    .local v5, "i1":I
    :cond_8
    move v5, v8

    goto :goto_0

    .line 633
    :cond_9
    :goto_3
    const/4 v7, 0x1

    .line 634
    if-nez v4, :cond_a

    .line 635
    const/4 v8, 0x4

    new-array v4, v8, [I

    .line 636
    aget v8, v3, v0

    aput v8, v4, v6

    goto :goto_4

    .line 637
    :cond_a
    array-length v8, v4

    if-lt v1, v8, :cond_d

    .line 638
    array-length v8, v4

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    new-array v8, v8, [I

    .line 639
    .local v8, "newuids":[I
    if-lez v5, :cond_b

    invoke-static {v4, v6, v8, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 640
    :cond_b
    if-ge v5, v1, :cond_c

    add-int/lit8 v9, v5, 0x1

    sub-int v10, v1, v5

    invoke-static {v4, v5, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 641
    :cond_c
    move-object v4, v8

    .line 642
    aget v9, v3, v0

    aput v9, v4, v5

    .line 643
    .end local v8    # "newuids":[I
    goto :goto_4

    .line 644
    :cond_d
    if-ge v5, v1, :cond_e

    add-int/lit8 v8, v5, 0x1

    sub-int v9, v1, v5

    invoke-static {v4, v5, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 645
    :cond_e
    aget v8, v3, v0

    aput v8, v4, v5

    .line 647
    :goto_4
    if-eqz p3, :cond_f

    .line 648
    sget-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aget v9, v3, v0

    invoke-static {v8, v9}, Landroid/os/WorkSource;->addWork(Landroid/os/WorkSource;I)Landroid/os/WorkSource;

    move-result-object v8

    sput-object v8, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 650
    :cond_f
    add-int/lit8 v1, v1, 0x1

    .line 651
    add-int/lit8 v5, v5, 0x1

    .line 652
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .param p1, "uid"    # I

    .line 392
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 393
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 394
    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 395
    return v1

    .line 397
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_2

    .line 400
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v0, v2, v3, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v0

    .line 402
    .local v0, "i":I
    if-ltz v0, :cond_1

    .line 403
    return v2

    .line 405
    :cond_1
    neg-int v2, v0

    sub-int/2addr v2, v1

    invoke-direct {p0, v2, p1}, Landroid/os/WorkSource;->insert(II)V

    .line 406
    return v1

    .line 398
    .end local v0    # "i":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding without name to named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(ILjava/lang/String;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 411
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    .line 412
    invoke-direct {p0, v2, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 413
    return v1

    .line 415
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 419
    move v0, v2

    .local v0, "i":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_4

    .line 420
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-le v3, p1, :cond_1

    .line 421
    goto :goto_1

    .line 423
    :cond_1
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_3

    .line 424
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 425
    .local v3, "diff":I
    if-lez v3, :cond_2

    .line 426
    goto :goto_1

    .line 428
    :cond_2
    if-nez v3, :cond_3

    .line 429
    return v2

    .line 419
    .end local v3    # "diff":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 433
    :cond_4
    :goto_1
    invoke-direct {p0, v0, p1, p2}, Landroid/os/WorkSource;->insert(IILjava/lang/String;)V

    .line 434
    return v1

    .line 416
    .end local v0    # "i":I
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding name to unnamed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Landroid/os/WorkSource;)Z
    .locals 8
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 353
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 354
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1, v1}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    move-result v2

    .line 356
    .local v2, "uidAdded":Z
    const/4 v3, 0x0

    .line 357
    .local v3, "chainAdded":Z
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 360
    iget-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 361
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 364
    :cond_0
    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/WorkSource$WorkChain;

    .line 365
    .local v5, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 366
    iget-object v6, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v7, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v7, v5}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    .end local v5    # "wc":Landroid/os/WorkSource$WorkChain;
    :cond_1
    goto :goto_0

    .line 371
    :cond_2
    if-nez v2, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    monitor-exit v0

    return v1

    .line 372
    .end local v2    # "uidAdded":Z
    .end local v3    # "chainAdded":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addReturningNewbs(Landroid/os/WorkSource;)Landroid/os/WorkSource;
    .locals 3
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 383
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 384
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 385
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 386
    sget-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    monitor-exit v0

    return-object v1

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public clear()V
    .locals 1

    .line 173
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 174
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    :cond_0
    return-void
.end method

.method public clearNames()V
    .locals 6

    .line 152
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 153
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 155
    const/4 v0, 0x1

    .line 156
    .local v0, "destIndex":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 157
    .local v1, "newNum":I
    const/4 v2, 0x1

    .local v2, "sourceIndex":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_1

    .line 158
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    add-int/lit8 v5, v2, -0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_0

    .line 159
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 161
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v2

    aput v4, v3, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    .line 157
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v2    # "sourceIndex":I
    :cond_1
    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 167
    .end local v0    # "destIndex":I
    .end local v1    # "newNum":I
    :cond_2
    return-void
.end method

.method public createWorkChain()Landroid/os/WorkSource$WorkChain;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 472
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 476
    :cond_0
    new-instance v0, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v0}, Landroid/os/WorkSource$WorkChain;-><init>()V

    .line 477
    .local v0, "wc":Landroid/os/WorkSource$WorkChain;
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 1070
    const/4 v0, 0x0

    return v0
.end method

.method public diff(Landroid/os/WorkSource;)Z
    .locals 10
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 225
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 226
    .local v0, "N":I
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    .line 227
    return v2

    .line 229
    :cond_0
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 230
    .local v1, "uids1":[I
    iget-object v3, p1, Landroid/os/WorkSource;->mUids:[I

    .line 231
    .local v3, "uids2":[I
    iget-object v4, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 232
    .local v4, "names1":[Ljava/lang/String;
    iget-object v5, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 233
    .local v5, "names2":[Ljava/lang/String;
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v0, :cond_3

    .line 234
    aget v8, v1, v7

    aget v9, v3, v7

    if-eq v8, v9, :cond_1

    .line 235
    return v2

    .line 237
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v5, :cond_2

    aget-object v8, v4, v7

    aget-object v9, v5, v7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 238
    return v2

    .line 233
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 241
    .end local v7    # "i":I
    :cond_3
    return v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 181
    instance-of v0, p1, Landroid/os/WorkSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 182
    move-object v0, p1

    check-cast v0, Landroid/os/WorkSource;

    .line 184
    .local v0, "other":Landroid/os/WorkSource;
    invoke-virtual {p0, v0}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 185
    return v1

    .line 188
    :cond_0
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 189
    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 191
    :cond_1
    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    goto :goto_1

    :cond_3
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 195
    .end local v0    # "other":Landroid/os/WorkSource;
    :cond_4
    return v1
.end method

.method public get(I)I
    .locals 1
    .param p1, "index"    # I

    .line 136
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    aget v0, v0, p1

    return v0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 141
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getWorkChains()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/os/WorkSource$WorkChain;",
            ">;"
        }
    .end annotation

    .line 497
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 200
    const/4 v0, 0x0

    .line 201
    .local v0, "result":I
    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    .local v0, "i":I
    .local v2, "result":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v3, :cond_0

    .line 202
    shl-int/lit8 v3, v2, 0x4

    ushr-int/lit8 v4, v2, 0x1c

    or-int/2addr v3, v4

    iget-object v4, p0, Landroid/os/WorkSource;->mUids:[I

    aget v4, v4, v0

    xor-int v2, v3, v4

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 205
    nop

    .local v1, "i":I
    :goto_1
    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    iget v1, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v0, v1, :cond_1

    .line 206
    shl-int/lit8 v1, v2, 0x4

    ushr-int/lit8 v3, v2, 0x1c

    or-int/2addr v1, v3

    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    xor-int v2, v1, v3

    .line 205
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 210
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 211
    shl-int/lit8 v0, v2, 0x4

    ushr-int/lit8 v1, v2, 0x1c

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    xor-int v2, v0, v1

    .line 214
    :cond_2
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .line 489
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Landroid/os/WorkSource;)Z
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 438
    invoke-virtual {p0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 443
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 444
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUids(Landroid/os/WorkSource;)Z

    move-result v0

    .local v0, "uidRemoved":Z
    goto :goto_0

    .line 446
    .end local v0    # "uidRemoved":Z
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 450
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 454
    invoke-direct {p0, p1}, Landroid/os/WorkSource;->removeUidsAndNames(Landroid/os/WorkSource;)Z

    move-result v0

    .line 457
    .restart local v0    # "uidRemoved":Z
    :goto_0
    const/4 v2, 0x0

    .line 458
    .local v2, "chainRemoved":Z
    iget-object v3, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 459
    iget-object v3, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    .line 462
    :cond_2
    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :goto_2
    return v1

    .line 451
    .end local v0    # "uidRemoved":Z
    .end local v2    # "chainRemoved":Z
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 447
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Other "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has names, but target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " does not"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :cond_7
    :goto_3
    return v1
.end method

.method public set(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 293
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 294
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    .line 295
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 296
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 297
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 298
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    :cond_1
    return-void
.end method

.method public set(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 304
    if-eqz p2, :cond_2

    .line 307
    const/4 v0, 0x1

    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 308
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    if-nez v0, :cond_0

    .line 309
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 310
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 313
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aput-object p2, v0, v1

    .line 314
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 317
    :cond_1
    return-void

    .line 305
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Landroid/os/WorkSource;)V
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 250
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 251
    iput v0, p0, Landroid/os/WorkSource;->mNum:I

    .line 252
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 255
    :cond_0
    return-void

    .line 257
    :cond_1
    iget v1, p1, Landroid/os/WorkSource;->mNum:I

    iput v1, p0, Landroid/os/WorkSource;->mNum:I

    .line 258
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 259
    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    array-length v1, v1

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v1, v3, :cond_2

    .line 260
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    iget v4, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v1, p1, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/os/WorkSource;->mUids:[I

    .line 264
    :goto_0
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 265
    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    array-length v1, v1

    iget v2, p0, Landroid/os/WorkSource;->mNum:I

    if-lt v1, v2, :cond_3

    .line 266
    iget-object v1, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    .line 268
    :cond_3
    iget-object v0, p1, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 271
    :cond_4
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    goto :goto_1

    .line 274
    :cond_5
    iput-object v2, p0, Landroid/os/WorkSource;->mUids:[I

    .line 275
    iput-object v2, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    .line 278
    :goto_1
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 279
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 280
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_2

    .line 282
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 285
    :goto_2
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource$WorkChain;

    .line 286
    .local v1, "chain":Landroid/os/WorkSource$WorkChain;
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    new-instance v3, Landroid/os/WorkSource$WorkChain;

    invoke-direct {v3, v1}, Landroid/os/WorkSource$WorkChain;-><init>(Landroid/os/WorkSource$WorkChain;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v1    # "chain":Landroid/os/WorkSource$WorkChain;
    goto :goto_3

    .line 289
    :cond_7
    return-void
.end method

.method public setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;
    .locals 5
    .param p1, "other"    # Landroid/os/WorkSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    sget-object v0, Landroid/os/WorkSource;->sTmpWorkSource:Landroid/os/WorkSource;

    monitor-enter v0

    .line 333
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    .line 334
    sput-object v1, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    .line 335
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2, v2}, Landroid/os/WorkSource;->updateLocked(Landroid/os/WorkSource;ZZ)Z

    .line 336
    sget-object v3, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    if-nez v3, :cond_1

    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 342
    :cond_0
    monitor-exit v0

    return-object v1

    .line 337
    :cond_1
    :goto_0
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/os/WorkSource;

    .line 338
    .local v1, "diffs":[Landroid/os/WorkSource;
    const/4 v3, 0x0

    sget-object v4, Landroid/os/WorkSource;->sNewbWork:Landroid/os/WorkSource;

    aput-object v4, v1, v3

    .line 339
    sget-object v3, Landroid/os/WorkSource;->sGoneWork:Landroid/os/WorkSource;

    aput-object v3, v1, v2

    .line 340
    monitor-exit v0

    return-object v1

    .line 343
    .end local v1    # "diffs":[Landroid/os/WorkSource;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public size()I
    .locals 1

    .line 131
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1090
    .local v0, "result":Ljava/lang/StringBuilder;
    const-string v1, "WorkSource{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    const/4 v1, 0x0

    move v2, v1

    .line 1091
    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroid/os/WorkSource;->mNum:I

    if-ge v2, v3, :cond_2

    .line 1092
    if-eqz v2, :cond_0

    .line 1093
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_0
    iget-object v3, p0, Landroid/os/WorkSource;->mUids:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1097
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1098
    iget-object v3, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1102
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    .line 1103
    const-string v2, " chains="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1104
    nop

    .line 1104
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1105
    if-eqz v1, :cond_3

    .line 1106
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1108
    :cond_3
    iget-object v2, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1112
    .end local v1    # "i":I
    :cond_4
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public transferWorkChains(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "other"    # Landroid/os/WorkSource;

    .line 507
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 511
    :cond_0
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 515
    :cond_1
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 516
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    .line 519
    :cond_2
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    iget-object v1, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget-object v0, p1, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 521
    return-void

    .line 512
    :cond_3
    :goto_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1075
    iget v0, p0, Landroid/os/WorkSource;->mNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    iget-object v0, p0, Landroid/os/WorkSource;->mUids:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1077
    iget-object v0, p0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1080
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1082
    :cond_0
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1083
    iget-object v0, p0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    .line 1085
    :goto_0
    return-void
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 20
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"    # J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1118
    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1119
    .local v2, "workSourceToken":J
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget v6, v0, Landroid/os/WorkSource;->mNum:I

    const-wide v7, 0x10900000002L

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    if-ge v5, v6, :cond_1

    .line 1120
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 1121
    .local v11, "contentProto":J
    iget-object v6, v0, Landroid/os/WorkSource;->mUids:[I

    aget v6, v6, v5

    invoke-virtual {v1, v9, v10, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1122
    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1123
    iget-object v6, v0, Landroid/os/WorkSource;->mNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1125
    :cond_0
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1119
    .end local v11    # "contentProto":J
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1128
    .end local v5    # "i":I
    :cond_1
    iget-object v5, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 1129
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_1
    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1130
    iget-object v6, v0, Landroid/os/WorkSource;->mChains:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/WorkSource$WorkChain;

    .line 1131
    .local v6, "wc":Landroid/os/WorkSource$WorkChain;
    const-wide v13, 0x20b00000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 1133
    .local v13, "workChain":J
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getTags()[Ljava/lang/String;

    move-result-object v15

    .line 1134
    .local v15, "tags":[Ljava/lang/String;
    invoke-virtual {v6}, Landroid/os/WorkSource$WorkChain;->getUids()[I

    move-result-object v16

    .line 1135
    .local v16, "uids":[I
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_2
    move/from16 v18, v17

    .end local v17    # "j":I
    .local v18, "j":I
    array-length v4, v15

    move/from16 v7, v18

    if-ge v7, v4, :cond_2

    .line 1136
    .end local v18    # "j":I
    .local v7, "j":I
    invoke-virtual {v1, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    .line 1137
    .local v9, "contentProto":J
    aget v4, v16, v7

    const-wide v11, 0x10500000001L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1138
    aget-object v4, v15, v7

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1139
    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1135
    .end local v9    # "contentProto":J
    add-int/lit8 v17, v7, 0x1

    .end local v7    # "j":I
    .restart local v17    # "j":I
    move-wide v7, v11

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_2

    .line 1142
    .end local v17    # "j":I
    :cond_2
    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1129
    .end local v6    # "wc":Landroid/os/WorkSource$WorkChain;
    .end local v13    # "workChain":J
    .end local v15    # "tags":[Ljava/lang/String;
    .end local v16    # "uids":[I
    add-int/lit8 v5, v5, 0x1

    move-wide v7, v11

    const-wide v9, 0x10500000001L

    const-wide v11, 0x20b00000001L

    goto :goto_1

    .line 1146
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1147
    return-void
.end method

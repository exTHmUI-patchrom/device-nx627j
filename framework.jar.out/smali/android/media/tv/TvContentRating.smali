.class public final Landroid/media/tv/TvContentRating;
.super Ljava/lang/Object;
.source "TvContentRating.java"


# static fields
.field private static final DELIMITER:Ljava/lang/String; = "/"

.field public static final UNRATED:Landroid/media/tv/TvContentRating;


# instance fields
.field private final mDomain:Ljava/lang/String;

.field private final mHashCode:I

.field private final mRating:Ljava/lang/String;

.field private final mRatingSystem:Ljava/lang/String;

.field private final mSubRatings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 794
    new-instance v0, Landroid/media/tv/TvContentRating;

    const-string/jumbo v1, "null"

    const-string/jumbo v2, "null"

    const-string/jumbo v3, "null"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Landroid/media/tv/TvContentRating;->UNRATED:Landroid/media/tv/TvContentRating;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p1, "domain"    # Ljava/lang/String;
    .param p2, "ratingSystem"    # Ljava/lang/String;
    .param p3, "rating"    # Ljava/lang/String;
    .param p4, "subRatings"    # [Ljava/lang/String;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    .line 857
    iput-object p2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    .line 858
    iput-object p3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    .line 859
    if-eqz p4, :cond_1

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_0

    .line 862
    :cond_0
    invoke-static {p4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 863
    iput-object p4, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    goto :goto_1

    .line 860
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    .line 865
    :goto_1
    const/16 v0, 0x1f

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    mul-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    .line 866
    return-void
.end method

.method public static varargs createRating(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .locals 2
    .param p0, "domain"    # Ljava/lang/String;
    .param p1, "ratingSystem"    # Ljava/lang/String;
    .param p2, "rating"    # Ljava/lang/String;
    .param p3, "subRatings"    # [Ljava/lang/String;

    .line 809
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 812
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 815
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 818
    new-instance v0, Landroid/media/tv/TvContentRating;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    .line 816
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rating cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 813
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ratingSystem cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 810
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "domain cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/media/tv/TvContentRating;
    .locals 7
    .param p0, "ratingString"    # Ljava/lang/String;

    .line 831
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 834
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 835
    .local v0, "strs":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    .line 838
    array-length v1, v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-le v1, v2, :cond_0

    .line 839
    array-length v1, v0

    sub-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 840
    .local v1, "subRatings":[Ljava/lang/String;
    array-length v6, v1

    invoke-static {v0, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 841
    new-instance v2, Landroid/media/tv/TvContentRating;

    aget-object v5, v0, v5

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    invoke-direct {v2, v5, v4, v3, v1}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v2

    .line 843
    .end local v1    # "subRatings":[Ljava/lang/String;
    :cond_0
    new-instance v1, Landroid/media/tv/TvContentRating;

    aget-object v2, v0, v5

    aget-object v4, v0, v4

    aget-object v3, v0, v3

    const/4 v5, 0x0

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/media/tv/TvContentRating;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v1

    .line 836
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid rating string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    .end local v0    # "strs":[Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "ratingString cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final contains(Landroid/media/tv/TvContentRating;)Z
    .locals 4
    .param p1, "rating"    # Landroid/media/tv/TvContentRating;

    .line 936
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 938
    return v1

    .line 940
    :cond_0
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getDomain()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getRatingSystem()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 942
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getMainRating()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 945
    :cond_1
    invoke-virtual {p0}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    move-result-object v0

    .line 946
    .local v0, "subRatings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/media/tv/TvContentRating;->getSubRatings()Ljava/util/List;

    move-result-object v2

    .line 947
    .local v2, "subRatingsOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-nez v2, :cond_2

    .line 948
    return v3

    .line 949
    :cond_2
    if-nez v0, :cond_3

    if-eqz v2, :cond_3

    .line 950
    return v1

    .line 951
    :cond_3
    if-eqz v0, :cond_4

    if-nez v2, :cond_4

    .line 952
    return v3

    .line 954
    :cond_4
    invoke-interface {v0, v2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 943
    .end local v0    # "subRatings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "subRatingsOther":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    :goto_0
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 960
    instance-of v0, p1, Landroid/media/tv/TvContentRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 961
    return v1

    .line 963
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/media/tv/TvContentRating;

    .line 964
    .local v0, "other":Landroid/media/tv/TvContentRating;
    iget v2, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    iget v3, v0, Landroid/media/tv/TvContentRating;->mHashCode:I

    if-eq v2, v3, :cond_1

    .line 965
    return v1

    .line 967
    :cond_1
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 968
    return v1

    .line 970
    :cond_2
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 971
    return v1

    .line 973
    :cond_3
    iget-object v2, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    iget-object v3, v0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 974
    return v1

    .line 976
    :cond_4
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    iget-object v2, v0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 6

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 918
    .local v4, "subRating":Ljava/lang/String;
    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 919
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .end local v4    # "subRating":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 922
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 872
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getMainRating()Ljava/lang/String;
    .locals 1

    .line 886
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRating:Ljava/lang/String;

    return-object v0
.end method

.method public getRatingSystem()Ljava/lang/String;
    .locals 1

    .line 879
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mRatingSystem:Ljava/lang/String;

    return-object v0
.end method

.method public getSubRatings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 894
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 895
    const/4 v0, 0x0

    return-object v0

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/media/tv/TvContentRating;->mSubRatings:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 981
    iget v0, p0, Landroid/media/tv/TvContentRating;->mHashCode:I

    return v0
.end method

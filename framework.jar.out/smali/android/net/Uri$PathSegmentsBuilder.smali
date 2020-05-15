.class Landroid/net/Uri$PathSegmentsBuilder;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathSegmentsBuilder"
.end annotation


# instance fields
.field segments:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1029
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 4
    .param p1, "segment"    # Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1033
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    goto :goto_0

    .line 1034
    :cond_0
    iget v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 1035
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 1036
    .local v0, "expanded":[Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 1040
    .end local v0    # "expanded":[Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    aput-object p1, v0, v1

    .line 1041
    return-void
.end method

.method build()Landroid/net/Uri$PathSegments;
    .locals 4

    .line 1044
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1045
    sget-object v0, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    return-object v0

    .line 1049
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/net/Uri$PathSegments;

    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    invoke-direct {v1, v2, v3}, Landroid/net/Uri$PathSegments;-><init>([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1052
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 1049
    return-object v1

    .line 1052
    :catchall_0
    move-exception v1

    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    throw v1
.end method

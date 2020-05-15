.class Landroid/text/Layout$TabStops;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TabStops"
.end annotation


# instance fields
.field private mIncrement:I

.field private mNumStops:I

.field private mStops:[I


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0
    .param p1, "increment"    # I
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 2132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2133
    invoke-virtual {p0, p1, p2}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    .line 2134
    return-void
.end method

.method public static nextDefaultStop(FI)F
    .locals 2
    .param p0, "h"    # F
    .param p1, "inc"    # I

    .line 2181
    int-to-float v0, p1

    add-float/2addr v0, p0

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-int v0, v0

    mul-int/2addr v0, p1

    int-to-float v0, v0

    return v0
.end method


# virtual methods
.method nextTab(F)F
    .locals 5
    .param p1, "h"    # F

    .line 2167
    iget v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 2168
    .local v0, "ns":I
    if-lez v0, :cond_1

    .line 2169
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 2170
    .local v1, "stops":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2171
    aget v3, v1, v2

    .line 2172
    .local v3, "stop":I
    int-to-float v4, v3

    cmpl-float v4, v4, p1

    if-lez v4, :cond_0

    .line 2173
    int-to-float v4, v3

    return v4

    .line 2170
    .end local v3    # "stop":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2177
    .end local v1    # "stops":[I
    .end local v2    # "i":I
    :cond_1
    iget v1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    invoke-static {p1, v1}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v1

    return v1
.end method

.method reset(I[Ljava/lang/Object;)V
    .locals 9
    .param p1, "increment"    # I
    .param p2, "spans"    # [Ljava/lang/Object;

    .line 2137
    iput p1, p0, Landroid/text/Layout$TabStops;->mIncrement:I

    .line 2139
    const/4 v0, 0x0

    .line 2140
    .local v0, "ns":I
    if-eqz p2, :cond_7

    .line 2141
    iget-object v1, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 2142
    .local v1, "stops":[I
    array-length v2, p2

    const/4 v3, 0x0

    move-object v4, v1

    move v1, v0

    move v0, v3

    .end local v0    # "ns":I
    .local v1, "ns":I
    .local v4, "stops":[I
    :goto_0
    if-ge v0, v2, :cond_4

    aget-object v5, p2, v0

    .line 2143
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Landroid/text/style/TabStopSpan;

    if-eqz v6, :cond_3

    .line 2144
    if-nez v4, :cond_0

    .line 2145
    const/16 v6, 0xa

    new-array v4, v6, [I

    goto :goto_2

    .line 2146
    :cond_0
    array-length v6, v4

    if-ne v1, v6, :cond_2

    .line 2147
    mul-int/lit8 v6, v1, 0x2

    new-array v6, v6, [I

    .line 2148
    .local v6, "nstops":[I
    move v7, v3

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_1

    .line 2149
    aget v8, v4, v7

    aput v8, v6, v7

    .line 2148
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2151
    .end local v7    # "i":I
    :cond_1
    move-object v4, v6

    .line 2153
    .end local v6    # "nstops":[I
    :cond_2
    :goto_2
    add-int/lit8 v6, v1, 0x1

    .local v6, "ns":I
    move-object v7, v5

    check-cast v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v7}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v7

    aput v7, v4, v1

    .line 2142
    .end local v1    # "ns":I
    .end local v5    # "o":Ljava/lang/Object;
    move v1, v6

    .end local v6    # "ns":I
    .restart local v1    # "ns":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2156
    :cond_4
    const/4 v0, 0x1

    if-le v1, v0, :cond_5

    .line 2157
    invoke-static {v4, v3, v1}, Ljava/util/Arrays;->sort([III)V

    .line 2159
    :cond_5
    iget-object v0, p0, Landroid/text/Layout$TabStops;->mStops:[I

    if-eq v4, v0, :cond_6

    .line 2160
    iput-object v4, p0, Landroid/text/Layout$TabStops;->mStops:[I

    .line 2163
    .end local v4    # "stops":[I
    :cond_6
    move v0, v1

    .end local v1    # "ns":I
    .restart local v0    # "ns":I
    :cond_7
    iput v0, p0, Landroid/text/Layout$TabStops;->mNumStops:I

    .line 2164
    return-void
.end method

.class public final Landroid/view/autofill/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# static fields
.field public static sDebug:Z

.field public static sVerbose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    .line 29
    sput-boolean v0, Landroid/view/autofill/Helper;->sVerbose:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "contains static members only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V
    .locals 1
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "value"    # Ljava/lang/CharSequence;

    .line 36
    invoke-static {p1}, Landroid/view/autofill/Helper;->getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    return-void
.end method

.method public static appendRedacted(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4
    .param p0, "builder"    # Ljava/lang/StringBuilder;
    .param p1, "values"    # [Ljava/lang/String;

    .line 51
    if-nez p1, :cond_0

    .line 52
    const-string v0, "N/A"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void

    .line 55
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 57
    .local v2, "value":Ljava/lang/String;
    const-string v3, " \'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {p0, v2}, Landroid/view/autofill/Helper;->appendRedacted(Ljava/lang/StringBuilder;Ljava/lang/CharSequence;)V

    .line 59
    const-string v3, "\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .end local v2    # "value":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_1
    const-string v0, " ]"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    return-void
.end method

.method public static getRedacted(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2
    .param p0, "value"    # Ljava/lang/CharSequence;

    .line 44
    if-nez p0, :cond_0

    const-string/jumbo v0, "null"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_chars"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static toArray(Ljava/util/Collection;)[Landroid/view/autofill/AutofillId;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/view/autofill/AutofillId;",
            ">;)[",
            "Landroid/view/autofill/AutofillId;"
        }
    .end annotation

    .line 70
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/autofill/AutofillId;>;"
    if-nez p0, :cond_0

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    return-object v0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Landroid/view/autofill/AutofillId;

    .line 74
    .local v0, "array":[Landroid/view/autofill/AutofillId;
    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    return-object v0
.end method

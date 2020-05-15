.class Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;
.super Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/dump/DualDumpOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DumpObject"
.end annotation


# instance fields
.field private final mSubObjects:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    .line 59
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/internal/util/dump/DualDumpOutputStream$1;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "d"    # Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    .line 105
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 107
    .local v0, "l":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;>;"
    if-nez v0, :cond_0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object v0, v1

    .line 109
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method print(Lcom/android/internal/util/IndentingPrintWriter;Z)V
    .locals 6
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "printName"    # Z

    .line 67
    if-eqz p2, :cond_0

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_0
    const-string v0, "{"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 72
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 74
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->mSubObjects:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 75
    .local v1, "subObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 77
    .local v2, "numDumpables":I
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_1

    .line 78
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    invoke-virtual {v4, p1, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->print(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    goto :goto_3

    .line 80
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    iget-object v5, v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->name:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "=["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 83
    move v3, v4

    .local v3, "i":I
    :goto_2
    if-ge v3, v2, :cond_2

    .line 84
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;

    invoke-virtual {v5, p1, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;->print(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 83
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 87
    .end local v3    # "i":I
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 88
    const-string v3, "]"

    invoke-virtual {p1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 90
    .end local v1    # "subObject":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;>;"
    .end local v2    # "numDumpables":I
    :goto_3
    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 93
    const-string v0, "}"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 94
    return-void
.end method

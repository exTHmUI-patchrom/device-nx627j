.class public Landroid/filterfw/io/TextGraphReader;
.super Landroid/filterfw/io/GraphReader;
.source "TextGraphReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterfw/io/TextGraphReader$ConnectCommand;,
        Landroid/filterfw/io/TextGraphReader$InitFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;,
        Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;,
        Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;,
        Landroid/filterfw/io/TextGraphReader$Command;
    }
.end annotation


# instance fields
.field private mBoundReferences:Landroid/filterfw/core/KeyValueMap;

.field private mCommands:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/filterfw/io/TextGraphReader$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilter:Landroid/filterfw/core/Filter;

.field private mCurrentGraph:Landroid/filterfw/core/FilterGraph;

.field private mFactory:Landroid/filterfw/core/FilterFactory;

.field private mSettings:Landroid/filterfw/core/KeyValueMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/filterfw/io/GraphReader;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterFactory;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    return-object v0
.end method

.method static synthetic access$100(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/Filter;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object v0
.end method

.method static synthetic access$102(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/Filter;)Landroid/filterfw/core/Filter;
    .locals 0
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;
    .param p1, "x1"    # Landroid/filterfw/core/Filter;

    .line 39
    iput-object p1, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p0, "x0"    # Landroid/filterfw/io/TextGraphReader;

    .line 39
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    return-object v0
.end method

.method private applySettings()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, "setting":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 454
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "autoBranch"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 455
    const-class v3, Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 456
    const-string/jumbo v3, "synced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 458
    :cond_0
    const-string/jumbo v3, "unsynced"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 459
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 460
    :cond_1
    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setAutoBranchMode(I)V

    goto :goto_1

    .line 463
    :cond_2
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown autobranch setting: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_3
    const-string v3, "discardUnconnectedOutputs"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 466
    const-class v3, Ljava/lang/Boolean;

    invoke-direct {p0, v1, v2, v3}, Landroid/filterfw/io/TextGraphReader;->expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 467
    iget-object v3, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    move-object v4, v2

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FilterGraph;->setDiscardUnconnectedOutputs(Z)V

    .line 471
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :goto_1
    goto/16 :goto_0

    .line 469
    .restart local v1    # "setting":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/Object;
    :cond_4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown @setting \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 472
    .end local v1    # "setting":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method private bindExternal(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 426
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0, p1}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 428
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, p1, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    .end local v0    # "value":Ljava/lang/Object;
    nop

    .line 434
    return-void

    .line 430
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown external variable \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'! You must add a reference to this external in the host program using addReference(...)!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReferences()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 442
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v0}, Landroid/filterfw/core/KeyValueMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 443
    .local v1, "reference":Ljava/lang/String;
    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v2, v1}, Landroid/filterfw/core/KeyValueMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 448
    .end local v1    # "reference":Ljava/lang/String;
    goto :goto_0

    .line 444
    .restart local v1    # "reference":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Host program specifies reference to \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', which is not declared @external in graph file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    .end local v1    # "reference":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private executeCommands()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 485
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/filterfw/io/TextGraphReader$Command;

    .line 486
    .local v1, "command":Landroid/filterfw/io/TextGraphReader$Command;
    invoke-interface {v1, p0}, Landroid/filterfw/io/TextGraphReader$Command;->execute(Landroid/filterfw/io/TextGraphReader;)V

    .line 487
    .end local v1    # "command":Landroid/filterfw/io/TextGraphReader$Command;
    goto :goto_0

    .line 488
    :cond_0
    return-void
.end method

.method private expectSettingClass(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 3
    .param p1, "setting"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "expectedClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 477
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p3, :cond_0

    .line 482
    return-void

    .line 478
    :cond_0
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' must have a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but found a value of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseString(Ljava/lang/String;)V
    .locals 46
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 170
    const-string v0, "@[a-zA-Z]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 171
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    const-string v0, "\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 172
    .local v8, "curlyClosePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\{"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 173
    .local v9, "curlyOpenPattern":Ljava/util/regex/Pattern;
    const-string v0, "(\\s+|//[^\\n]*\\n)+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 174
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\.]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 175
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z\\./:]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 176
    .local v12, "libraryNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "\\[[a-zA-Z0-9\\-_]+\\]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 177
    .local v13, "portPattern":Ljava/util/regex/Pattern;
    const-string v0, "=>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    .line 178
    .local v14, "rightArrowPattern":Ljava/util/regex/Pattern;
    const-string v0, ";"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v15

    .line 179
    .local v15, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "[a-zA-Z0-9\\-_]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 181
    .local v5, "wordPattern":Ljava/util/regex/Pattern;
    const/16 v16, 0x0

    .line 182
    .local v16, "STATE_COMMAND":I
    const/16 v17, 0x1

    .line 183
    .local v17, "STATE_IMPORT_PKG":I
    const/16 v18, 0x2

    .line 184
    .local v18, "STATE_ADD_LIBRARY":I
    const/16 v19, 0x3

    .line 185
    .local v19, "STATE_FILTER_CLASS":I
    const/16 v20, 0x4

    .line 186
    .local v20, "STATE_FILTER_NAME":I
    const/16 v21, 0x5

    .line 187
    .local v21, "STATE_CURLY_OPEN":I
    const/16 v22, 0x6

    .line 188
    .local v22, "STATE_PARAMETERS":I
    const/16 v23, 0x7

    .line 189
    .local v23, "STATE_CURLY_CLOSE":I
    const/16 v24, 0x8

    .line 190
    .local v24, "STATE_SOURCE_FILTERNAME":I
    const/16 v25, 0x9

    .line 191
    .local v25, "STATE_SOURCE_PORT":I
    const/16 v26, 0xa

    .line 192
    .local v26, "STATE_RIGHT_ARROW":I
    const/16 v27, 0xb

    .line 193
    .local v27, "STATE_TARGET_FILTERNAME":I
    const/16 v28, 0xc

    .line 194
    .local v28, "STATE_TARGET_PORT":I
    const/16 v29, 0xd

    .line 195
    .local v29, "STATE_ASSIGNMENT":I
    const/16 v30, 0xe

    .line 196
    .local v30, "STATE_EXTERNAL":I
    const/16 v31, 0xf

    .line 197
    .local v31, "STATE_SETTING":I
    const/16 v32, 0x10

    .line 199
    .local v32, "STATE_SEMICOLON":I
    const/4 v0, 0x0

    .line 200
    .local v0, "state":I
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    move-object/from16 v4, p1

    invoke-direct {v1, v4, v10}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    move-object v3, v1

    .line 202
    .local v3, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v1, 0x0

    .line 203
    .local v1, "curClassName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 204
    .local v2, "curSourceFilterName":Ljava/lang/String;
    const/16 v33, 0x0

    .line 205
    .local v33, "curSourcePortName":Ljava/lang/String;
    const/16 v34, 0x0

    .line 206
    .local v34, "curTargetFilterName":Ljava/lang/String;
    const/16 v35, 0x0

    move-object/from16 v36, v34

    move-object/from16 v34, v33

    move-object/from16 v33, v2

    .line 206
    .end local v0    # "state":I
    .local v2, "state":I
    .local v33, "curSourceFilterName":Ljava/lang/String;
    .local v34, "curSourcePortName":Ljava/lang/String;
    .local v35, "curTargetPortName":Ljava/lang/String;
    .local v36, "curTargetFilterName":Ljava/lang/String;
    :goto_0
    move v2, v0

    move-object/from16 v0, v35

    .line 209
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .local v0, "curTargetPortName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v35

    if-nez v35, :cond_7

    .line 210
    move-object/from16 v37, v0

    const/4 v0, 0x1

    .line 210
    .end local v0    # "curTargetPortName":Ljava/lang/String;
    .local v37, "curTargetPortName":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 333
    move/from16 v43, v2

    move-object v2, v7

    move-object/from16 v41, v10

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v1, v11

    move-object v11, v5

    move-object/from16 v35, v37

    move/from16 v0, v43

    .line 333
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v2, "commandPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .local v41, "ignorePattern":Ljava/util/regex/Pattern;
    .local v42, "semicolonPattern":Ljava/util/regex/Pattern;
    .local v43, "state":I
    goto/16 :goto_7

    .line 331
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v43    # "state":I
    .local v1, "curClassName":Ljava/lang/String;
    .local v2, "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_0
    const-string v0, ";"

    invoke-virtual {v3, v15, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 332
    const/4 v0, 0x0

    .line 333
    .end local v2    # "state":I
    .local v0, "state":I
    move-object v2, v7

    move-object/from16 v41, v10

    move-object/from16 v42, v15

    move-object/from16 v35, v37

    move-object v10, v1

    move-object v7, v3

    move-object v1, v11

    goto :goto_2

    .line 324
    .end local v0    # "state":I
    .restart local v2    # "state":I
    :pswitch_1
    invoke-direct {v6, v3, v15}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 325
    .local v0, "setting":Landroid/filterfw/core/KeyValueMap;
    move-object/from16 v38, v1

    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 325
    .end local v1    # "curClassName":Ljava/lang/String;
    .local v38, "curClassName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 326
    const/16 v1, 0x10

    .line 327
    .end local v2    # "state":I
    .local v1, "state":I
    goto :goto_1

    .line 317
    .end local v0    # "setting":Landroid/filterfw/core/KeyValueMap;
    .end local v38    # "curClassName":Ljava/lang/String;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    :pswitch_2
    move-object/from16 v38, v1

    .line 317
    .end local v1    # "curClassName":Ljava/lang/String;
    .restart local v38    # "curClassName":Ljava/lang/String;
    const-string v0, "<external-identifier>"

    invoke-virtual {v3, v5, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, "externalName":Ljava/lang/String;
    invoke-direct {v6, v0}, Landroid/filterfw/io/TextGraphReader;->bindExternal(Ljava/lang/String;)V

    .line 319
    const/16 v1, 0x10

    .line 320
    .end local v2    # "state":I
    .local v1, "state":I
    goto :goto_1

    .line 310
    .end local v0    # "externalName":Ljava/lang/String;
    .end local v38    # "curClassName":Ljava/lang/String;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    :pswitch_3
    move-object/from16 v38, v1

    .line 310
    .end local v1    # "curClassName":Ljava/lang/String;
    .restart local v38    # "curClassName":Ljava/lang/String;
    invoke-direct {v6, v3, v15}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 311
    .local v0, "assignment":Landroid/filterfw/core/KeyValueMap;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v1, v0}, Landroid/filterfw/core/KeyValueMap;->putAll(Ljava/util/Map;)V

    .line 312
    const/16 v1, 0x10

    .line 313
    .end local v2    # "state":I
    .local v1, "state":I
    nop

    .line 333
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .end local v38    # "curClassName":Ljava/lang/String;
    .local v0, "state":I
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v2, "commandPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v35    # "curTargetPortName":Ljava/lang/String;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    :goto_1
    move v0, v1

    move-object v2, v7

    move-object/from16 v41, v10

    move-object v1, v11

    move-object/from16 v42, v15

    move-object/from16 v35, v37

    move-object/from16 v10, v38

    move-object v7, v3

    :goto_2
    move-object v11, v5

    goto/16 :goto_7

    .line 299
    .end local v0    # "state":I
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .local v2, "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v37    # "curTargetPortName":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v38, v1

    .line 299
    .end local v1    # "curClassName":Ljava/lang/String;
    .restart local v38    # "curClassName":Ljava/lang/String;
    const-string v1, "[<target-port-name>]"

    invoke-virtual {v3, v13, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "portString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v35

    move/from16 v39, v2

    add-int/lit8 v2, v35, -0x1

    .line 300
    .end local v2    # "state":I
    .local v39, "state":I
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v35

    .line 301
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .restart local v35    # "curTargetPortName":Ljava/lang/String;
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;

    move-object/from16 v40, v0

    move-object/from16 v37, v1

    move-object/from16 v41, v10

    move-object/from16 v10, v38

    move-object v1, v6

    .line 301
    .end local v1    # "portString":Ljava/lang/String;
    .end local v38    # "curClassName":Ljava/lang/String;
    .local v10, "curClassName":Ljava/lang/String;
    .local v37, "portString":Ljava/lang/String;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    move-object/from16 v42, v15

    move/from16 v43, v39

    move-object v15, v2

    move-object/from16 v2, v33

    .line 301
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v39    # "state":I
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    move-object/from16 v44, v7

    move-object v7, v3

    move-object/from16 v3, v34

    .line 301
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v44, "commandPattern":Ljava/util/regex/Pattern;
    move-object/from16 v4, v36

    move-object/from16 v45, v11

    move-object v11, v5

    move-object/from16 v5, v35

    .line 301
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .local v45, "packageNamePattern":Ljava/util/regex/Pattern;
    invoke-direct/range {v0 .. v5}, Landroid/filterfw/io/TextGraphReader$ConnectCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    const/16 v0, 0x10

    .line 306
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_5

    .line 294
    .end local v0    # "state":I
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v37, "curTargetPortName":Ljava/lang/String;
    :pswitch_5
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 294
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<target-filter-name>"

    invoke-virtual {v7, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 295
    const/16 v0, 0xc

    .line 296
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_4

    .line 289
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v1    # "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_6
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 289
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "=>"

    invoke-virtual {v7, v14, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 290
    const/16 v0, 0xb

    .line 291
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_4

    .line 282
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v1    # "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_7
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 282
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v1, "[<source-port-name>]"

    invoke-virtual {v7, v13, v1}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, "portString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v34

    .line 284
    const/16 v0, 0xa

    .line 285
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_4

    .line 277
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_8
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 277
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<source-filter-name>"

    invoke-virtual {v7, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 278
    const/16 v0, 0x9

    .line 279
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_4

    .line 272
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v1    # "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_9
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 272
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v0, "}"

    invoke-virtual {v7, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    const/4 v0, 0x0

    .line 274
    .end local v43    # "state":I
    .restart local v0    # "state":I
    goto/16 :goto_4

    .line 265
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v1    # "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_a
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 265
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    invoke-direct {v6, v7, v8}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v0

    .line 266
    .local v0, "params":Landroid/filterfw/core/KeyValueMap;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;

    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$InitFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Landroid/filterfw/core/KeyValueMap;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    const/4 v1, 0x7

    .line 268
    .end local v43    # "state":I
    .local v1, "state":I
    goto/16 :goto_3

    .line 260
    .end local v0    # "params":Landroid/filterfw/core/KeyValueMap;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_b
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 260
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v0, "{"

    invoke-virtual {v7, v9, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 261
    const/4 v0, 0x6

    .line 262
    .end local v43    # "state":I
    .local v0, "state":I
    goto/16 :goto_4

    .line 253
    .end local v0    # "state":I
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v1    # "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_c
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 253
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<filter-name>"

    invoke-virtual {v7, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 254
    .local v0, "curFilterName":Ljava/lang/String;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;

    invoke-direct {v2, v6, v10, v0}, Landroid/filterfw/io/TextGraphReader$AllocateFilterCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    const/4 v1, 0x5

    .line 256
    .end local v43    # "state":I
    .local v1, "state":I
    goto :goto_3

    .line 248
    .end local v0    # "curFilterName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_d
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 248
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<class-name>"

    invoke-virtual {v7, v11, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v10    # "curClassName":Ljava/lang/String;
    .local v0, "curClassName":Ljava/lang/String;
    const/4 v1, 0x4

    .line 250
    .end local v43    # "state":I
    .local v1, "state":I
    nop

    .line 333
    move-object v10, v0

    goto :goto_3

    .line 241
    .end local v0    # "curClassName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v2    # "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_e
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 241
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<library-name>"

    invoke-virtual {v7, v12, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    .local v0, "libraryName":Ljava/lang/String;
    iget-object v1, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v2, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;

    invoke-direct {v2, v6, v0}, Landroid/filterfw/io/TextGraphReader$AddLibraryCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    const/16 v1, 0x10

    .line 244
    .end local v43    # "state":I
    .local v1, "state":I
    nop

    .line 333
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v0, "state":I
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v2, "commandPattern":Ljava/util/regex/Pattern;
    .restart local v35    # "curTargetPortName":Ljava/lang/String;
    :goto_3
    move v0, v1

    :goto_4
    move-object/from16 v35, v37

    :goto_5
    move-object/from16 v2, v44

    move-object/from16 v1, v45

    goto/16 :goto_7

    .line 234
    .end local v0    # "state":I
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .local v2, "state":I
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v37    # "curTargetPortName":Ljava/lang/String;
    :pswitch_f
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v45, v11

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v11, v5

    .line 234
    .end local v1    # "curClassName":Ljava/lang/String;
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .restart local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    const-string v0, "<package-name>"

    move-object/from16 v1, v45

    invoke-virtual {v7, v1, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 235
    .end local v45    # "packageNamePattern":Ljava/util/regex/Pattern;
    .local v0, "packageName":Ljava/lang/String;
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    iget-object v2, v6, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    new-instance v3, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;

    invoke-direct {v3, v6, v0}, Landroid/filterfw/io/TextGraphReader$ImportPackageCommand;-><init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    const/16 v2, 0x10

    .line 237
    .end local v43    # "state":I
    .restart local v2    # "state":I
    nop

    .line 333
    move v0, v2

    move-object/from16 v35, v37

    move-object/from16 v2, v44

    goto/16 :goto_7

    .line 212
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .local v1, "curClassName":Ljava/lang/String;
    .restart local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_10
    move/from16 v43, v2

    move-object/from16 v44, v7

    move-object/from16 v41, v10

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v1, v11

    move-object v11, v5

    .line 212
    .end local v2    # "state":I
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    .restart local v44    # "commandPattern":Ljava/util/regex/Pattern;
    const-string v0, "<command>"

    move-object/from16 v2, v44

    invoke-virtual {v7, v2, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .end local v44    # "commandPattern":Ljava/util/regex/Pattern;
    .local v0, "curCommand":Ljava/lang/String;
    .local v2, "commandPattern":Ljava/util/regex/Pattern;
    const-string v3, "@import"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    const/4 v3, 0x1

    .line 333
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .end local v43    # "state":I
    .local v0, "state":I
    .local v3, "state":I
    .restart local v35    # "curTargetPortName":Ljava/lang/String;
    :goto_6
    move v0, v3

    move-object/from16 v35, v37

    goto :goto_7

    .line 215
    .end local v3    # "state":I
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .local v0, "curCommand":Ljava/lang/String;
    .restart local v37    # "curTargetPortName":Ljava/lang/String;
    .restart local v43    # "state":I
    :cond_0
    const-string v3, "@library"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 216
    const/4 v3, 0x2

    goto :goto_6

    .line 217
    :cond_1
    const-string v3, "@filter"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 218
    const/4 v3, 0x3

    goto :goto_6

    .line 219
    :cond_2
    const-string v3, "@connect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 220
    const/16 v3, 0x8

    goto :goto_6

    .line 221
    :cond_3
    const-string v3, "@set"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 222
    const/16 v3, 0xd

    goto :goto_6

    .line 223
    :cond_4
    const-string v3, "@external"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 224
    const/16 v3, 0xe

    goto :goto_6

    .line 225
    :cond_5
    const-string v3, "@setting"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 226
    const/16 v3, 0xf

    goto :goto_6

    .line 228
    :cond_6
    new-instance v3, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown command \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 333
    .end local v37    # "curTargetPortName":Ljava/lang/String;
    .end local v43    # "state":I
    .local v0, "state":I
    .restart local v35    # "curTargetPortName":Ljava/lang/String;
    :goto_7
    nop

    .line 206
    move-object/from16 v4, p1

    move-object v3, v7

    move-object v5, v11

    move-object/from16 v15, v42

    move-object v11, v1

    move-object v7, v2

    move-object v1, v10

    move-object/from16 v10, v41

    goto/16 :goto_0

    .line 338
    .end local v35    # "curTargetPortName":Ljava/lang/String;
    .end local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .end local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v0, "curTargetPortName":Ljava/lang/String;
    .local v1, "curClassName":Ljava/lang/String;
    .local v2, "state":I
    .local v3, "scanner":Landroid/filterfw/io/PatternScanner;
    .restart local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .local v7, "commandPattern":Ljava/util/regex/Pattern;
    .local v10, "ignorePattern":Ljava/util/regex/Pattern;
    .local v11, "packageNamePattern":Ljava/util/regex/Pattern;
    .restart local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    :cond_7
    move-object/from16 v37, v0

    move/from16 v43, v2

    move-object v2, v7

    move-object/from16 v41, v10

    move-object/from16 v42, v15

    move-object v10, v1

    move-object v7, v3

    move-object v1, v11

    move-object v11, v5

    .line 338
    .end local v0    # "curTargetPortName":Ljava/lang/String;
    .end local v3    # "scanner":Landroid/filterfw/io/PatternScanner;
    .end local v5    # "wordPattern":Ljava/util/regex/Pattern;
    .end local v15    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v1, "packageNamePattern":Ljava/util/regex/Pattern;
    .local v2, "commandPattern":Ljava/util/regex/Pattern;
    .local v7, "scanner":Landroid/filterfw/io/PatternScanner;
    .local v10, "curClassName":Ljava/lang/String;
    .local v11, "wordPattern":Ljava/util/regex/Pattern;
    .restart local v37    # "curTargetPortName":Ljava/lang/String;
    .restart local v41    # "ignorePattern":Ljava/util/regex/Pattern;
    .restart local v42    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v43    # "state":I
    const/16 v0, 0x10

    move/from16 v3, v43

    if-eq v3, v0, :cond_9

    .line 338
    .end local v43    # "state":I
    .local v3, "state":I
    if-nez v3, :cond_8

    goto :goto_8

    .line 339
    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v4, "Unexpected end of input!"

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 341
    :cond_9
    :goto_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;
    .locals 25
    .param p1, "scanner"    # Landroid/filterfw/io/PatternScanner;
    .param p2, "endPattern"    # Ljava/util/regex/Pattern;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 353
    const/4 v2, 0x0

    .line 354
    .local v2, "STATE_IDENTIFIER":I
    const/4 v3, 0x1

    .line 355
    .local v3, "STATE_EQUALS":I
    const/4 v4, 0x2

    .line 356
    .local v4, "STATE_VALUE":I
    const/4 v5, 0x3

    .line 358
    .local v5, "STATE_POST_VALUE":I
    const-string v6, "="

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 359
    .local v6, "equalsPattern":Ljava/util/regex/Pattern;
    const-string v7, ";"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 360
    .local v7, "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v8, "[a-zA-Z]+[a-zA-Z0-9]*"

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 361
    .local v8, "wordPattern":Ljava/util/regex/Pattern;
    const-string v9, "\'[^\']*\'|\\\"[^\\\"]*\\\""

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 362
    .local v9, "stringPattern":Ljava/util/regex/Pattern;
    const-string v10, "[0-9]+"

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    .line 363
    .local v10, "intPattern":Ljava/util/regex/Pattern;
    const-string v11, "[0-9]*\\.[0-9]+f?"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    .line 364
    .local v11, "floatPattern":Ljava/util/regex/Pattern;
    const-string v12, "\\$[a-zA-Z]+[a-zA-Z0-9]"

    invoke-static {v12}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v12

    .line 365
    .local v12, "referencePattern":Ljava/util/regex/Pattern;
    const-string/jumbo v13, "true|false"

    invoke-static {v13}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v13

    .line 367
    .local v13, "booleanPattern":Ljava/util/regex/Pattern;
    const/4 v14, 0x0

    .line 368
    .local v14, "state":I
    new-instance v15, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v15}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    .line 369
    .local v15, "newVals":Landroid/filterfw/core/KeyValueMap;
    const/16 v16, 0x0

    .line 370
    .local v16, "curKey":Ljava/lang/String;
    const/16 v17, 0x0

    move/from16 v18, v2

    move/from16 v19, v3

    move v2, v14

    move-object/from16 v3, v16

    move-object/from16 v14, v17

    .line 372
    .end local v16    # "curKey":Ljava/lang/String;
    .local v2, "state":I
    .local v3, "curKey":Ljava/lang/String;
    .local v14, "curValue":Ljava/lang/String;
    .local v18, "STATE_IDENTIFIER":I
    .local v19, "STATE_EQUALS":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->atEnd()Z

    move-result v16

    if-nez v16, :cond_9

    if-eqz p2, :cond_1

    invoke-virtual/range {p1 .. p2}, Landroid/filterfw/io/PatternScanner;->peek(Ljava/util/regex/Pattern;)Z

    move-result v20

    if-nez v20, :cond_0

    goto :goto_1

    .line 417
    :cond_0
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    goto/16 :goto_7

    .line 373
    :cond_1
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 412
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    .line 412
    .end local v4    # "STATE_VALUE":I
    .end local v5    # "STATE_POST_VALUE":I
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v21, "STATE_VALUE":I
    .local v22, "STATE_POST_VALUE":I
    .local v24, "semicolonPattern":Ljava/util/regex/Pattern;
    goto/16 :goto_6

    .line 410
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "STATE_VALUE":I
    .restart local v5    # "STATE_POST_VALUE":I
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_0
    move/from16 v21, v4

    const-string v4, ";"

    .line 410
    .end local v4    # "STATE_VALUE":I
    .restart local v21    # "STATE_VALUE":I
    invoke-virtual {v1, v7, v4}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 411
    const/4 v2, 0x0

    .line 412
    move/from16 v22, v5

    move-object/from16 v24, v7

    goto/16 :goto_6

    .line 385
    .end local v21    # "STATE_VALUE":I
    .restart local v4    # "STATE_VALUE":I
    :pswitch_1
    move/from16 v21, v4

    .line 385
    .end local v4    # "STATE_VALUE":I
    .restart local v21    # "STATE_VALUE":I
    invoke-virtual {v1, v9}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    move/from16 v22, v5

    const/4 v5, 0x1

    .line 385
    .end local v5    # "STATE_POST_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    if-eqz v4, :cond_2

    .line 386
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v14, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v3, v4}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    :goto_2
    move-object/from16 v24, v7

    goto/16 :goto_4

    .line 387
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :cond_2
    invoke-virtual {v1, v12}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v4

    move-object v14, v4

    if-eqz v4, :cond_5

    .line 388
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v14, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 389
    .local v4, "refName":Ljava/lang/String;
    iget-object v5, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    if-eqz v5, :cond_3

    .line 390
    iget-object v5, v0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    invoke-virtual {v5, v4}, Landroid/filterfw/core/KeyValueMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_3

    .line 391
    :cond_3
    move-object/from16 v5, v17

    .line 392
    .local v5, "referencedObject":Ljava/lang/Object;
    :goto_3
    if-eqz v5, :cond_4

    .line 396
    invoke-virtual {v15, v3, v5}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .end local v4    # "refName":Ljava/lang/String;
    .end local v5    # "referencedObject":Ljava/lang/Object;
    goto :goto_2

    .line 393
    .restart local v4    # "refName":Ljava/lang/String;
    .restart local v5    # "referencedObject":Ljava/lang/Object;
    :cond_4
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    move-object/from16 v23, v5

    new-instance v5, Ljava/lang/StringBuilder;

    .line 393
    .end local v5    # "referencedObject":Ljava/lang/Object;
    .local v23, "referencedObject":Ljava/lang/Object;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v7

    const-string v7, "Unknown object reference to \'"

    .line 393
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\'!"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 397
    .end local v4    # "refName":Ljava/lang/String;
    .end local v23    # "referencedObject":Ljava/lang/Object;
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :cond_5
    move-object/from16 v24, v7

    .line 397
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v13}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    if-eqz v0, :cond_6

    .line 398
    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 399
    :cond_6
    invoke-virtual {v1, v11}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    if-eqz v0, :cond_7

    .line 400
    invoke-static {v14}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 401
    :cond_7
    invoke-virtual {v1, v10}, Landroid/filterfw/io/PatternScanner;->tryEat(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v14, v0

    if-eqz v0, :cond_8

    .line 402
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Landroid/filterfw/core/KeyValueMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    :goto_4
    const/4 v0, 0x3

    .line 407
    .end local v2    # "state":I
    .local v0, "state":I
    goto :goto_5

    .line 404
    .end local v0    # "state":I
    .restart local v2    # "state":I
    :cond_8
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    const-string v4, "<value>"

    invoke-virtual {v1, v4}, Landroid/filterfw/io/PatternScanner;->unexpectedTokenMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .local v4, "STATE_VALUE":I
    .local v5, "STATE_POST_VALUE":I
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_2
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    .line 380
    .end local v4    # "STATE_VALUE":I
    .end local v5    # "STATE_POST_VALUE":I
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "="

    invoke-virtual {v1, v6, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    .line 381
    const/4 v0, 0x2

    .line 382
    .end local v2    # "state":I
    .restart local v0    # "state":I
    nop

    .line 412
    .end local v0    # "state":I
    .restart local v2    # "state":I
    :goto_5
    move v2, v0

    goto :goto_6

    .line 375
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "STATE_VALUE":I
    .restart local v5    # "STATE_POST_VALUE":I
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :pswitch_3
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    .line 375
    .end local v4    # "STATE_VALUE":I
    .end local v5    # "STATE_POST_VALUE":I
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    const-string v0, "<identifier>"

    invoke-virtual {v1, v8, v0}, Landroid/filterfw/io/PatternScanner;->eat(Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 376
    .end local v3    # "curKey":Ljava/lang/String;
    .local v0, "curKey":Ljava/lang/String;
    const/4 v2, 0x1

    .line 377
    nop

    .line 412
    move-object v3, v0

    .line 370
    .end local v0    # "curKey":Ljava/lang/String;
    .restart local v3    # "curKey":Ljava/lang/String;
    :goto_6
    move/from16 v4, v21

    move/from16 v5, v22

    move-object/from16 v7, v24

    move-object/from16 v0, p0

    goto/16 :goto_0

    .line 417
    .end local v21    # "STATE_VALUE":I
    .end local v22    # "STATE_POST_VALUE":I
    .end local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v4    # "STATE_VALUE":I
    .restart local v5    # "STATE_POST_VALUE":I
    .restart local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    :cond_9
    move/from16 v21, v4

    move/from16 v22, v5

    move-object/from16 v24, v7

    .line 417
    .end local v4    # "STATE_VALUE":I
    .end local v5    # "STATE_POST_VALUE":I
    .end local v7    # "semicolonPattern":Ljava/util/regex/Pattern;
    .restart local v21    # "STATE_VALUE":I
    .restart local v22    # "STATE_POST_VALUE":I
    .restart local v24    # "semicolonPattern":Ljava/util/regex/Pattern;
    :goto_7
    if-eqz v2, :cond_b

    const/4 v0, 0x3

    if-ne v2, v0, :cond_a

    goto :goto_8

    .line 418
    :cond_a
    new-instance v0, Landroid/filterfw/io/GraphIOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected end of assignments on line "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/io/PatternScanner;->lineNo()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/filterfw/io/GraphIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 422
    :cond_b
    :goto_8
    return-object v15

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .line 161
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 162
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentFilter:Landroid/filterfw/core/Filter;

    .line 163
    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCommands:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 164
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mBoundReferences:Landroid/filterfw/core/KeyValueMap;

    .line 165
    new-instance v0, Landroid/filterfw/core/KeyValueMap;

    invoke-direct {v0}, Landroid/filterfw/core/KeyValueMap;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mSettings:Landroid/filterfw/core/KeyValueMap;

    .line 166
    new-instance v0, Landroid/filterfw/core/FilterFactory;

    invoke-direct {v0}, Landroid/filterfw/core/FilterFactory;-><init>()V

    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mFactory:Landroid/filterfw/core/FilterFactory;

    .line 167
    return-void
.end method


# virtual methods
.method public readGraphString(Ljava/lang/String;)Landroid/filterfw/core/FilterGraph;
    .locals 1
    .param p1, "graphString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 148
    new-instance v0, Landroid/filterfw/core/FilterGraph;

    invoke-direct {v0}, Landroid/filterfw/core/FilterGraph;-><init>()V

    .line 150
    .local v0, "result":Landroid/filterfw/core/FilterGraph;
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 151
    iput-object v0, p0, Landroid/filterfw/io/TextGraphReader;->mCurrentGraph:Landroid/filterfw/core/FilterGraph;

    .line 152
    invoke-direct {p0, p1}, Landroid/filterfw/io/TextGraphReader;->parseString(Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->applySettings()V

    .line 154
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->executeCommands()V

    .line 155
    invoke-direct {p0}, Landroid/filterfw/io/TextGraphReader;->reset()V

    .line 157
    return-object v0
.end method

.method public readKeyValueAssignments(Ljava/lang/String;)Landroid/filterfw/core/KeyValueMap;
    .locals 3
    .param p1, "assignments"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/filterfw/io/GraphIOException;
        }
    .end annotation

    .line 345
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 346
    .local v0, "ignorePattern":Ljava/util/regex/Pattern;
    new-instance v1, Landroid/filterfw/io/PatternScanner;

    invoke-direct {v1, p1, v0}, Landroid/filterfw/io/PatternScanner;-><init>(Ljava/lang/String;Ljava/util/regex/Pattern;)V

    .line 347
    .local v1, "scanner":Landroid/filterfw/io/PatternScanner;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/filterfw/io/TextGraphReader;->readKeyValueAssignments(Landroid/filterfw/io/PatternScanner;Ljava/util/regex/Pattern;)Landroid/filterfw/core/KeyValueMap;

    move-result-object v2

    return-object v2
.end method

.class public final Landroid/renderscript/ScriptGroup$Closure;
.super Landroid/renderscript/BaseObj;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Closure"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Closure"


# instance fields
.field private mArgs:[Ljava/lang/Object;

.field private mBindings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mFP:Landroid/renderscript/FieldPacker;

.field private mGlobalFuture:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Landroid/renderscript/ScriptGroup$Future;",
            ">;"
        }
    .end annotation
.end field

.field private mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

.field private mReturnValue:Landroid/renderscript/Allocation;


# direct methods
.method constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 0
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 112
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 113
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$InvokeID;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 24
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "invokeID"    # Landroid/renderscript/Script$InvokeID;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$InvokeID;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p4, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 157
    const-wide/16 v0, 0x0

    invoke-direct {v9, v0, v1, v10}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 158
    invoke-static/range {p3 .. p3}, Landroid/renderscript/FieldPacker;->createFromArray([Ljava/lang/Object;)Landroid/renderscript/FieldPacker;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    .line 160
    move-object/from16 v11, p3

    iput-object v11, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 161
    move-object/from16 v12, p4

    iput-object v12, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 164
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->size()I

    move-result v13

    .line 166
    .local v13, "numValues":I
    new-array v14, v13, [J

    .line 167
    .local v14, "fieldIDs":[J
    new-array v15, v13, [J

    .line 168
    .local v15, "values":[J
    new-array v8, v13, [I

    .line 169
    .local v8, "sizes":[I
    new-array v7, v13, [J

    .line 170
    .local v7, "depClosures":[J
    new-array v6, v13, [J

    .line 172
    .local v6, "depFieldIDs":[J
    const/4 v0, 0x0

    .line 173
    .local v0, "i":I
    invoke-interface/range {p4 .. p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v16, v0

    .end local v0    # "i":I
    .local v16, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/util/Map$Entry;

    .line 174
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v17

    .line 175
    .local v17, "obj":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/renderscript/Script$FieldID;

    .line 176
    .local v3, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v3, v10}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v14, v16

    .line 177
    move-object v0, v9

    move-object v1, v10

    move/from16 v2, v16

    move-object/from16 v18, v3

    .end local v3    # "fieldID":Landroid/renderscript/Script$FieldID;
    .local v18, "fieldID":Landroid/renderscript/Script$FieldID;
    move-object/from16 v19, v4

    move-object/from16 v4, v17

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    .local v19, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    move-object/from16 v20, v5

    move-object v5, v15

    move-object/from16 v21, v6

    move-object v6, v8

    .end local v6    # "depFieldIDs":[J
    .local v21, "depFieldIDs":[J
    move-object/from16 v22, v7

    .end local v7    # "depClosures":[J
    .local v22, "depClosures":[J
    move-object/from16 v23, v8

    move-object/from16 v8, v21

    .end local v8    # "sizes":[I
    .local v23, "sizes":[I
    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 179
    add-int/lit8 v16, v16, 0x1

    .line 180
    .end local v17    # "obj":Ljava/lang/Object;
    .end local v18    # "fieldID":Landroid/renderscript/Script$FieldID;
    .end local v19    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    nop

    .line 173
    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v8, v23

    goto :goto_0

    .line 182
    .end local v21    # "depFieldIDs":[J
    .end local v22    # "depClosures":[J
    .end local v23    # "sizes":[I
    .restart local v6    # "depFieldIDs":[J
    .restart local v7    # "depClosures":[J
    .restart local v8    # "sizes":[I
    :cond_0
    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .end local v6    # "depFieldIDs":[J
    .end local v7    # "depClosures":[J
    .end local v8    # "sizes":[I
    .restart local v21    # "depFieldIDs":[J
    .restart local v22    # "depClosures":[J
    .restart local v23    # "sizes":[I
    move-object/from16 v7, p2

    invoke-virtual {v7, v10}, Landroid/renderscript/Script$InvokeID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mFP:Landroid/renderscript/FieldPacker;

    invoke-virtual {v0}, Landroid/renderscript/FieldPacker;->getData()[B

    move-result-object v3

    move-object v0, v10

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v23

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/RenderScript;->nInvokeClosureCreate(J[B[J[J[I)J

    move-result-wide v0

    .line 185
    .local v0, "id":J
    invoke-virtual {v9, v0, v1}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 187
    iget-object v2, v9, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v3, "destroy"

    invoke-virtual {v2, v3}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method constructor <init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Script$KernelID;Landroid/renderscript/Type;[Ljava/lang/Object;Ljava/util/Map;)V
    .locals 27
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "kernelID"    # Landroid/renderscript/Script$KernelID;
    .param p3, "returnType"    # Landroid/renderscript/Type;
    .param p4, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/renderscript/RenderScript;",
            "Landroid/renderscript/Script$KernelID;",
            "Landroid/renderscript/Type;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map<",
            "Landroid/renderscript/Script$FieldID;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .local p5, "globals":Ljava/util/Map;, "Ljava/util/Map<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    move-object/from16 v9, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p4

    .line 117
    const-wide/16 v10, 0x0

    invoke-direct {v9, v10, v11, v15}, Landroid/renderscript/BaseObj;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 119
    iput-object v13, v9, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    .line 120
    move-object/from16 v14, p3

    invoke-static {v15, v14}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v0

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 121
    move-object/from16 v12, p5

    iput-object v12, v9, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v9, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    .line 124
    array-length v0, v13

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->size()I

    move-result v1

    add-int v8, v0, v1

    .line 126
    .local v8, "numValues":I
    new-array v7, v8, [J

    .line 127
    .local v7, "fieldIDs":[J
    new-array v6, v8, [J

    .line 128
    .local v6, "values":[J
    new-array v5, v8, [I

    .line 129
    .local v5, "sizes":[I
    new-array v4, v8, [J

    .line 130
    .local v4, "depClosures":[J
    new-array v3, v8, [J

    .line 133
    .local v3, "depFieldIDs":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    move v2, v0

    .end local v0    # "i":I
    .local v2, "i":I
    array-length v0, v13

    if-ge v2, v0, :cond_0

    .line 134
    aput-wide v10, v7, v2

    .line 135
    const/16 v16, 0x0

    aget-object v17, v13, v2

    move-object v0, v9

    move-object v1, v15

    move/from16 v18, v2

    .end local v2    # "i":I
    .local v18, "i":I
    move-object/from16 v20, v3

    move-object/from16 v3, v16

    .end local v3    # "depFieldIDs":[J
    .local v20, "depFieldIDs":[J
    move-object/from16 v21, v4

    move-object/from16 v4, v17

    .end local v4    # "depClosures":[J
    .local v21, "depClosures":[J
    move-object/from16 v22, v5

    move-object v5, v6

    .end local v5    # "sizes":[I
    .local v22, "sizes":[I
    move-object/from16 v23, v6

    move-object/from16 v6, v22

    .end local v6    # "values":[J
    .local v23, "values":[J
    move-object/from16 v24, v7

    move-object/from16 v7, v21

    .end local v7    # "fieldIDs":[J
    .local v24, "fieldIDs":[J
    move/from16 v25, v8

    move-object/from16 v8, v20

    .end local v8    # "numValues":I
    .local v25, "numValues":I
    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 133
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .restart local v0    # "i":I
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v7, v24

    move/from16 v8, v25

    goto :goto_0

    .line 138
    .end local v0    # "i":I
    .end local v20    # "depFieldIDs":[J
    .end local v21    # "depClosures":[J
    .end local v22    # "sizes":[I
    .end local v23    # "values":[J
    .end local v24    # "fieldIDs":[J
    .end local v25    # "numValues":I
    .restart local v2    # "i":I
    .restart local v3    # "depFieldIDs":[J
    .restart local v4    # "depClosures":[J
    .restart local v5    # "sizes":[I
    .restart local v6    # "values":[J
    .restart local v7    # "fieldIDs":[J
    .restart local v8    # "numValues":I
    :cond_0
    move/from16 v18, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move/from16 v25, v8

    .end local v2    # "i":I
    .end local v3    # "depFieldIDs":[J
    .end local v4    # "depClosures":[J
    .end local v5    # "sizes":[I
    .end local v6    # "values":[J
    .end local v7    # "fieldIDs":[J
    .end local v8    # "numValues":I
    .restart local v18    # "i":I
    .restart local v20    # "depFieldIDs":[J
    .restart local v21    # "depClosures":[J
    .restart local v22    # "sizes":[I
    .restart local v23    # "values":[J
    .restart local v24    # "fieldIDs":[J
    .restart local v25    # "numValues":I
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move/from16 v26, v18

    .end local v18    # "i":I
    .local v26, "i":I
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Map$Entry;

    .line 139
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 140
    .local v16, "obj":Ljava/lang/Object;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/renderscript/Script$FieldID;

    .line 141
    .local v8, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-virtual {v8, v15}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    aput-wide v0, v24, v26

    .line 142
    move-object v0, v9

    move-object v1, v15

    move/from16 v2, v26

    move-object v3, v8

    move-object/from16 v4, v16

    move-object/from16 v5, v23

    move-object/from16 v6, v22

    move-object/from16 v7, v21

    move-object/from16 v17, v8

    move-object/from16 v8, v20

    .end local v8    # "fieldID":Landroid/renderscript/Script$FieldID;
    .local v17, "fieldID":Landroid/renderscript/Script$FieldID;
    invoke-direct/range {v0 .. v8}, Landroid/renderscript/ScriptGroup$Closure;->retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V

    .line 144
    add-int/lit8 v26, v26, 0x1

    .line 145
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/renderscript/Script$FieldID;Ljava/lang/Object;>;"
    .end local v16    # "obj":Ljava/lang/Object;
    .end local v17    # "fieldID":Landroid/renderscript/Script$FieldID;
    goto :goto_1

    .line 147
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/renderscript/Script$KernelID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v1

    iget-object v3, v9, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v3, v15}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    move-object v10, v15

    move-wide v11, v1

    move-wide v13, v3

    move-object/from16 v15, v24

    move-object/from16 v16, v23

    move-object/from16 v17, v22

    move-object/from16 v18, v21

    move-object/from16 v19, v20

    invoke-virtual/range {v10 .. v19}, Landroid/renderscript/RenderScript;->nClosureCreate(JJ[J[J[I[J[J)J

    move-result-wide v1

    .line 150
    .local v1, "id":J
    invoke-virtual {v9, v1, v2}, Landroid/renderscript/ScriptGroup$Closure;->setID(J)V

    .line 152
    iget-object v3, v9, Landroid/renderscript/ScriptGroup$Closure;->guard:Ldalvik/system/CloseGuard;

    const-string v4, "destroy"

    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method private retrieveValueAndDependenceInfo(Landroid/renderscript/RenderScript;ILandroid/renderscript/Script$FieldID;Ljava/lang/Object;[J[I[J[J)V
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "index"    # I
    .param p3, "fid"    # Landroid/renderscript/Script$FieldID;
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "values"    # [J
    .param p6, "sizes"    # [I
    .param p7, "depClosures"    # [J
    .param p8, "depFieldIDs"    # [J

    .line 213
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Future;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 214
    move-object v0, p4

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 215
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p4

    .line 216
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getClosure()Landroid/renderscript/ScriptGroup$Closure;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    aput-wide v3, p7, p2

    .line 217
    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getFieldID()Landroid/renderscript/Script$FieldID;

    move-result-object v3

    .line 218
    .local v3, "fieldID":Landroid/renderscript/Script$FieldID;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    goto :goto_0

    :cond_0
    move-wide v4, v1

    :goto_0
    aput-wide v4, p8, p2

    .line 219
    .end local v0    # "f":Landroid/renderscript/ScriptGroup$Future;
    .end local v3    # "fieldID":Landroid/renderscript/Script$FieldID;
    goto :goto_1

    .line 220
    :cond_1
    aput-wide v1, p7, p2

    .line 221
    aput-wide v1, p8, p2

    .line 224
    :goto_1
    instance-of v0, p4, Landroid/renderscript/ScriptGroup$Input;

    if-eqz v0, :cond_3

    .line 225
    move-object v0, p4

    check-cast v0, Landroid/renderscript/ScriptGroup$Input;

    .line 226
    .local v0, "unbound":Landroid/renderscript/ScriptGroup$Input;
    iget-object v3, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    array-length v3, v3

    if-ge p2, v3, :cond_2

    .line 227
    invoke-virtual {v0, p0, p2}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;I)V

    goto :goto_2

    .line 229
    :cond_2
    invoke-virtual {v0, p0, p3}, Landroid/renderscript/ScriptGroup$Input;->addReference(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;)V

    .line 231
    :goto_2
    aput-wide v1, p5, p2

    .line 232
    const/4 v1, 0x0

    aput v1, p6, p2

    .line 233
    .end local v0    # "unbound":Landroid/renderscript/ScriptGroup$Input;
    goto :goto_3

    .line 234
    :cond_3
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    invoke-direct {v0, p1, p4}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 235
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-wide v1, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    aput-wide v1, p5, p2

    .line 236
    iget v1, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    aput v1, p6, p2

    .line 238
    .end local v0    # "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    :goto_3
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 194
    invoke-super {p0}, Landroid/renderscript/BaseObj;->destroy()V

    .line 195
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    .line 198
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    .line 204
    invoke-super {p0}, Landroid/renderscript/BaseObj;->finalize()V

    .line 205
    return-void
.end method

.method public getGlobal(Landroid/renderscript/Script$FieldID;)Landroid/renderscript/ScriptGroup$Future;
    .locals 3
    .param p1, "field"    # Landroid/renderscript/Script$FieldID;

    .line 262
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    .line 264
    .local v0, "f":Landroid/renderscript/ScriptGroup$Future;
    if-nez v0, :cond_1

    .line 269
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 270
    .local v1, "obj":Ljava/lang/Object;
    instance-of v2, v1, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v2, :cond_0

    .line 271
    move-object v2, v1

    check-cast v2, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v2}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 273
    :cond_0
    new-instance v2, Landroid/renderscript/ScriptGroup$Future;

    invoke-direct {v2, p0, p1, v1}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    move-object v0, v2

    .line 274
    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mGlobalFuture:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .end local v1    # "obj":Ljava/lang/Object;
    :cond_1
    return-object v0
.end method

.method public getReturn()Landroid/renderscript/ScriptGroup$Future;
    .locals 3

    .line 247
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    if-nez v0, :cond_0

    .line 248
    new-instance v0, Landroid/renderscript/ScriptGroup$Future;

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnValue:Landroid/renderscript/Allocation;

    invoke-direct {v0, p0, v1, v2}, Landroid/renderscript/ScriptGroup$Future;-><init>(Landroid/renderscript/ScriptGroup$Closure;Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    .line 251
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mReturnFuture:Landroid/renderscript/ScriptGroup$Future;

    return-object v0
.end method

.method setArg(ILjava/lang/Object;)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 281
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 282
    move-object v0, p2

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 284
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mArgs:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 285
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 286
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-wide v5, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v7, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    move v4, p1

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/RenderScript;->nClosureSetArg(JIJI)V

    .line 287
    return-void
.end method

.method setGlobal(Landroid/renderscript/Script$FieldID;Ljava/lang/Object;)V
    .locals 9
    .param p1, "fieldID"    # Landroid/renderscript/Script$FieldID;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 290
    instance-of v0, p2, Landroid/renderscript/ScriptGroup$Future;

    if-eqz v0, :cond_0

    .line 291
    move-object v0, p2

    check-cast v0, Landroid/renderscript/ScriptGroup$Future;

    invoke-virtual {v0}, Landroid/renderscript/ScriptGroup$Future;->getValue()Ljava/lang/Object;

    move-result-object p2

    .line 293
    :cond_0
    iget-object v0, p0, Landroid/renderscript/ScriptGroup$Closure;->mBindings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;

    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-direct {v0, v1, p2}, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;-><init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V

    .line 295
    .local v0, "vs":Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
    iget-object v1, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p0, v2}, Landroid/renderscript/ScriptGroup$Closure;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v4, p0, Landroid/renderscript/ScriptGroup$Closure;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {p1, v4}, Landroid/renderscript/Script$FieldID;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-wide v6, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    iget v8, v0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    invoke-virtual/range {v1 .. v8}, Landroid/renderscript/RenderScript;->nClosureSetGlobal(JJJI)V

    .line 296
    return-void
.end method

.class public Lcom/android/internal/util/dump/DualDumpOutputStream;
.super Ljava/lang/Object;
.source "DualDumpOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;,
        Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mDumpObjects:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mIpw:Lcom/android/internal/util/IndentingPrintWriter;

.field private final mProtoStream:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/android/internal/util/dump/DualDumpOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/util/proto/ProtoOutputStream;)V
    .locals 1
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    .line 140
    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    .line 141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 3
    .param p1, "ipw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    .line 151
    iput-object p1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Lcom/android/internal/util/IndentingPrintWriter;

    .line 154
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    new-instance v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-direct {v2, v0, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 155
    return-void
.end method


# virtual methods
.method public end(J)V
    .locals 3
    .param p1, "token"    # J

    .line 225
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_0

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 229
    sget-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected token for ending "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v2, v2, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 234
    :goto_0
    return-void
.end method

.method public flush()V
    .locals 3

    .line 237
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->print(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 245
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->flush()V

    .line 250
    :goto_0
    return-void
.end method

.method public isProto()Z
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public start(Ljava/lang/String;J)J
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J

    .line 214
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    return-wide v0

    .line 217
    :cond_0
    new-instance v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;-><init>(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    .line 218
    .local v0, "d":Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 219
    iget-object v1, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 220
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method

.method public write(Ljava/lang/String;JD)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # D

    .line 158
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 163
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;JF)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # F

    .line 182
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 187
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # I

    .line 174
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 179
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;JJ)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # J

    .line 198
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 203
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;JLjava/lang/String;)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 211
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;JZ)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # Z

    .line 166
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 171
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/String;J[B)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "fieldId"    # J
    .param p4, "val"    # [B

    .line 190
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mProtoStream:Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {v0, p2, p3, p4}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    goto :goto_0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    invoke-static {p4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 195
    :goto_0
    return-void
.end method

.method public writeNested(Ljava/lang/String;[B)V
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "nestedState"    # [B

    .line 261
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mIpw:Lcom/android/internal/util/IndentingPrintWriter;

    if-nez v0, :cond_0

    .line 262
    sget-object v0, Lcom/android/internal/util/dump/DualDumpOutputStream;->LOG_TAG:Ljava/lang/String;

    const-string v1, "writeNested does not work for proto logging"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/dump/DualDumpOutputStream;->mDumpObjects:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, p2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 267
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpField;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$1;)V

    .line 266
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream$DumpObject;->add(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream$Dumpable;)V

    .line 268
    return-void
.end method

.class final Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Bucket"
.end annotation


# instance fields
.field public final hash:I

.field public final length:I

.field public final name:Lcom/fasterxml/jackson/core/sym/Name;

.field public final next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;


# direct methods
.method constructor <init>(Lcom/fasterxml/jackson/core/sym/Name;Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;)V
    .locals 1

    .prologue
    .line 1205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1206
    iput-object p1, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1207
    iput-object p2, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    .line 1208
    if-nez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    .line 1209
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/sym/Name;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    .line 1210
    return-void

    .line 1208
    :cond_0
    iget v0, p2, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->length:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final find(III)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3

    .prologue
    .line 1213
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_1

    .line 1214
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1215
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1226
    :cond_0
    :goto_0
    return-object v0

    .line 1218
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1219
    iget v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_2

    .line 1220
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1221
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals(II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1218
    :cond_2
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    goto :goto_1

    .line 1226
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final find(I[II)Lcom/fasterxml/jackson/core/sym/Name;
    .locals 3

    .prologue
    .line 1230
    iget v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_1

    .line 1231
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1232
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1243
    :cond_0
    :goto_0
    return-object v0

    .line 1235
    :cond_1
    iget-object v0, p0, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 1236
    iget v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->hash:I

    if-ne v0, p1, :cond_2

    .line 1237
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->name:Lcom/fasterxml/jackson/core/sym/Name;

    .line 1238
    invoke-virtual {v0, p2, p3}, Lcom/fasterxml/jackson/core/sym/Name;->equals([II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    :cond_2
    iget-object v0, v1, Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;->next:Lcom/fasterxml/jackson/core/sym/BytesToNameCanonicalizer$Bucket;

    move-object v1, v0

    goto :goto_1

    .line 1243
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

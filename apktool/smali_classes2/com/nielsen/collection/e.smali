.class public final Lcom/nielsen/collection/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/nielsen/collection/g;

.field private e:Lcom/nielsen/collection/d;

.field private f:Lcom/nielsen/collection/a;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/16 v4, 0x6a

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "END\"/></GGC>"

    iput-object v0, p0, Lcom/nielsen/collection/e;->i:Ljava/lang/String;

    .line 38
    const-string v0, "^|^^"

    iput-object v0, p0, Lcom/nielsen/collection/e;->j:Ljava/lang/String;

    .line 39
    const-string v0, "|||"

    iput-object v0, p0, Lcom/nielsen/collection/e;->k:Ljava/lang/String;

    .line 41
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/e;->l:Ljava/lang/String;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/e;->b:Ljava/lang/String;

    .line 47
    new-instance v0, Lcom/nielsen/collection/a;

    invoke-direct {v0}, Lcom/nielsen/collection/a;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/e;->f:Lcom/nielsen/collection/a;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nielsen/collection/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/e;->c:Ljava/lang/String;

    .line 51
    if-eqz p6, :cond_0

    :goto_0
    iput-object p6, p0, Lcom/nielsen/collection/e;->l:Ljava/lang/String;

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/e;->h:Ljava/lang/Integer;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x1f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x53

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x70

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 56
    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x37

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x52

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x61

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v4}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x5f

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x1c

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0x40

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/Character;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Character;-><init>(C)V

    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/nielsen/collection/e;->g:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/nielsen/collection/e;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/nielsen/collection/e;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nielsen/collection/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/e;->a:Ljava/lang/String;

    .line 63
    new-instance v0, Lcom/nielsen/collection/d;

    invoke-direct {v0, p1, p2, p4, p5}, Lcom/nielsen/collection/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nielsen/collection/e;->e:Lcom/nielsen/collection/d;

    .line 65
    new-instance v0, Lcom/nielsen/collection/g;

    iget-object v1, p0, Lcom/nielsen/collection/e;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nielsen/collection/g;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nielsen/collection/e;->d:Lcom/nielsen/collection/g;

    .line 67
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    const-wide v2, 0x4197d78400000000L    # 1.0E8

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p6

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/nielsen/collection/e;->e:Lcom/nielsen/collection/d;

    invoke-virtual {v0, p1}, Lcom/nielsen/collection/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/nielsen/collection/e;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nielsen/collection/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<m v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nielsen/collection/e;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/collection/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/collection/e;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/nielsen/collection/e;->e:Lcom/nielsen/collection/d;

    invoke-virtual {v1}, Lcom/nielsen/collection/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nielsen/collection/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 140
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 136
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 137
    const-string v0, ""

    goto :goto_0
.end method

.method public final a([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/nielsen/collection/e;->e:Lcom/nielsen/collection/d;

    invoke-virtual {v0, p1}, Lcom/nielsen/collection/d;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/nielsen/collection/e;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/nielsen/collection/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<m v="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nielsen/collection/e;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/collection/e;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</m>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/nielsen/collection/e;->d:Lcom/nielsen/collection/g;

    invoke-virtual {v1, v0, p3}, Lcom/nielsen/collection/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 111
    return-void
.end method

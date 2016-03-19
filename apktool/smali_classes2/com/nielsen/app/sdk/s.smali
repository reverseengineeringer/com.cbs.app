.class final Lcom/nielsen/app/sdk/s;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Lcom/nielsen/app/sdk/i;

.field private E:Lcom/nielsen/app/sdk/j;

.field private F:Lcom/nielsen/app/sdk/AppNative;

.field private G:Lcom/nielsen/app/sdk/b;

.field private H:Lcom/nielsen/app/sdk/a;

.field private I:Lcom/nielsen/app/sdk/w;

.field private J:Ljava/lang/String;

.field private K:Lcom/nielsen/app/sdk/b$c;

.field private L:Ljava/lang/String;

.field private M:Ljava/lang/String;

.field private N:Ljava/lang/String;

.field private O:Z

.field private P:Ljava/lang/String;

.field public a:Lcom/nielsen/app/sdk/k$a;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:J

.field private y:J

.field private z:I


# direct methods
.method public constructor <init>(ILcom/nielsen/app/sdk/b$c;)V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 49
    iput v6, p0, Lcom/nielsen/app/sdk/s;->b:I

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    .line 53
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->a:Lcom/nielsen/app/sdk/k$a;

    .line 65
    iput v6, p0, Lcom/nielsen/app/sdk/s;->d:I

    .line 77
    const/4 v0, 0x7

    iput v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    .line 89
    iput v6, p0, Lcom/nielsen/app/sdk/s;->f:I

    .line 105
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    .line 107
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->h:J

    .line 108
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->j:Ljava/lang/String;

    .line 111
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    .line 118
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    .line 119
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->r:J

    .line 121
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->s:J

    .line 122
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->t:J

    .line 123
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 124
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->v:J

    .line 125
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->w:J

    .line 126
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->x:J

    .line 127
    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->y:J

    .line 129
    iput v6, p0, Lcom/nielsen/app/sdk/s;->z:I

    .line 130
    iput v6, p0, Lcom/nielsen/app/sdk/s;->A:I

    .line 131
    iput v6, p0, Lcom/nielsen/app/sdk/s;->B:I

    .line 133
    iput-boolean v1, p0, Lcom/nielsen/app/sdk/s;->C:Z

    .line 135
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    .line 136
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    .line 138
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    .line 139
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    .line 140
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    .line 141
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->I:Lcom/nielsen/app/sdk/w;

    .line 376
    const-string v0, "id3"

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    .line 388
    iput-object v4, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    .line 390
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    .line 392
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    .line 404
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    .line 1471
    iput-boolean v6, p0, Lcom/nielsen/app/sdk/s;->O:Z

    .line 1884
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    .line 155
    :try_start_0
    invoke-static {}, Lcom/nielsen/app/sdk/o;->l()Lcom/nielsen/app/sdk/AppNative;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    .line 156
    invoke-static {}, Lcom/nielsen/app/sdk/o;->i()Lcom/nielsen/app/sdk/b;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    .line 157
    invoke-static {}, Lcom/nielsen/app/sdk/o;->j()Lcom/nielsen/app/sdk/a;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    .line 158
    invoke-static {}, Lcom/nielsen/app/sdk/o;->h()Lcom/nielsen/app/sdk/w;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->I:Lcom/nielsen/app/sdk/w;

    .line 160
    invoke-static {}, Lcom/nielsen/app/sdk/o;->k()Lcom/nielsen/app/sdk/k;

    move-result-object v0

    .line 161
    if-eqz v0, :cond_0

    .line 162
    const-string v2, "AppUpload"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/k;->c(Ljava/lang/String;)Lcom/nielsen/app/sdk/k$a;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->a:Lcom/nielsen/app/sdk/k$a;

    .line 164
    :cond_0
    invoke-static {}, Lcom/nielsen/app/sdk/i;->a()Lcom/nielsen/app/sdk/i;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    .line 165
    invoke-static {}, Lcom/nielsen/app/sdk/j;->a()Lcom/nielsen/app/sdk/j;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    .line 167
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->b()Ljava/util/concurrent/BlockingQueue;

    .line 169
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Lcom/nielsen/app/sdk/b$c;

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v2, p2}, Lcom/nielsen/app/sdk/b$c;-><init>(Lcom/nielsen/app/sdk/b;Lcom/nielsen/app/sdk/b$c;)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    .line 172
    :cond_1
    invoke-virtual {p2, p1}, Lcom/nielsen/app/sdk/b$c;->a(I)Ljava/util/Map;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Processor("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") need data to start it"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :catch_0
    move-exception v0

    const/4 v2, 0x7

    const/16 v3, 0x45

    const-string v4, "Processor id(%s) type(%s)"

    new-array v5, v8, [Ljava/lang/Object;

    iget v7, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    sget-object v6, Lcom/nielsen/app/sdk/t;->b:[Ljava/lang/String;

    iget v7, p0, Lcom/nielsen/app/sdk/s;->e:I

    aget-object v6, v6, v7

    aput-object v6, v5, v1

    invoke-static/range {v0 .. v5}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :cond_3
    return-void

    .line 176
    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v2, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 2223
    :cond_5
    iput p1, p0, Lcom/nielsen/app/sdk/s;->d:I

    .line 2225
    const-string v2, ""

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    .line 2227
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    .line 2228
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->h:J

    .line 2230
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 2232
    const/4 v2, 0x0

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    .line 2234
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->e()Z

    move-result v2

    if-nez v2, :cond_8

    .line 2236
    iget v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-nez v2, :cond_7

    .line 2238
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v2}, Lcom/nielsen/app/sdk/b;->f()Z

    move-result v2

    if-nez v2, :cond_8

    move v3, v6

    .line 181
    :goto_0
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    iget v5, p0, Lcom/nielsen/app/sdk/s;->e:I

    invoke-virtual {v2, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;I)V

    .line 183
    const-string v2, "[Processor]"

    .line 185
    const-string v4, "nol_comment"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 186
    if-eqz v0, :cond_39

    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 189
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") product("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nielsen/app/sdk/t;->b:[Ljava/lang/String;

    iget v4, p0, Lcom/nielsen/app/sdk/s;->e:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") session("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/nielsen/app/sdk/t;->a:[Ljava/lang/String;

    iget v4, p0, Lcom/nielsen/app/sdk/s;->c:I

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    if-eqz v2, :cond_6

    .line 193
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    .line 2526
    iput-object v0, v2, Lcom/nielsen/app/sdk/b$c;->c:Ljava/lang/String;

    .line 195
    :cond_6
    invoke-virtual {p0, v0}, Lcom/nielsen/app/sdk/s;->setName(Ljava/lang/String;)V

    .line 197
    if-nez v3, :cond_3

    .line 198
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") there should be parameters to start processor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v3, v6

    .line 2243
    goto/16 :goto_0

    .line 2247
    :cond_8
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_product"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    .line 2248
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2249
    :cond_9
    const-string v2, "id3"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    .line 2251
    :cond_a
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "id3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_24

    .line 2252
    const/4 v2, 0x0

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    .line 2266
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_cadence"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    .line 2267
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2268
    :cond_c
    const-string v2, "interval"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    .line 2270
    :cond_d
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    const-string v3, "interval"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2a

    .line 2271
    const/4 v2, 0x2

    iput v2, p0, Lcom/nielsen/app/sdk/s;->c:I

    .line 2281
    :goto_3
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_timer"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    .line 2282
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    invoke-static {v2}, Lcom/nielsen/app/sdk/w;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2284
    :cond_e
    iget v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    iget v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-ne v2, v8, :cond_2e

    .line 2285
    :cond_f
    const-string v2, "nol_fdoffset"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    .line 2290
    :cond_10
    :goto_4
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_segmentValue"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2291
    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2292
    :cond_11
    const-wide/16 v2, 0x3c

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->t:J

    .line 2296
    :goto_5
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_segmentLength"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2297
    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2298
    :cond_12
    const-wide/16 v2, 0x5

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->v:J

    .line 2302
    :goto_6
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_creditValue"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2303
    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2304
    :cond_13
    const-wide/16 v2, 0x1e

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->y:J

    .line 2308
    :goto_7
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_segmentPrefix"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 2309
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2310
    :cond_14
    const-string v2, ""

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 2312
    :cond_15
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    .line 2313
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    const-string v3, "D"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_16

    .line 2314
    const-string v2, "S"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    .line 2316
    :cond_16
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_unQualSegmentValue"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2317
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 2318
    :cond_17
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->s:J

    .line 2322
    :goto_8
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_creditFlag"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    .line 2323
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2324
    :cond_18
    const-string v2, "0"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    .line 2326
    :cond_19
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_url"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    .line 2327
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2329
    :cond_1a
    const/16 v2, 0x57

    const-string v3, "URL for processor id(%d) not found. It\'s going to use the default one"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v7, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 2331
    const-string v2, "https://secure-|!nol_sfcode!|.imrworldwide.com/cgi-bin/cfg?cfgv=150&longitude=|![nol_longitude]!|&latitude=|![nol_latitude]!|&apid=|!nol_appid!|&apv=|!nol_appversion!|&apn=|!nol_appname!|&sdkv=|!nol_sdkversion!|&nuid=|!nol_nuid!|&osver=|!nol_osversion!|&devtypid=|!nol_devtypeid!|&devid=|![nol_deviceId]!|&fmt=json&adf=|![nol_appdisable]!|&uoo=|![nol_useroptout]!|&sfcode=|![nol_sfcode]!|&ccode=|![nol_countrycode]!|&dma=|![nol_dma]!||![nol_appParams]!|"

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    .line 2334
    :cond_1b
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_maxLength"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2335
    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_33

    .line 2336
    :cond_1c
    const-string v2, "1800"

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->w:J

    .line 2340
    :goto_9
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_maxPingCount"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2341
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2342
    :cond_1d
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->x:J

    .line 2346
    :goto_a
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_cidNull"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    .line 2347
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2348
    :cond_1e
    const-string v2, "X100zdCIGeIlgZnkYj6UvQ=="

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    .line 2350
    :cond_1f
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_sendQual"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2351
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 2352
    :cond_20
    const/4 v2, 0x0

    iput v2, p0, Lcom/nielsen/app/sdk/s;->B:I

    .line 2356
    :goto_b
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_intrvlThrshld"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2357
    if-eqz v2, :cond_21

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2358
    :cond_21
    const/16 v2, 0x5a

    iput v2, p0, Lcom/nielsen/app/sdk/s;->z:I

    .line 2362
    :goto_c
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_id3IntrvlGp"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2363
    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2364
    :cond_22
    const/16 v2, 0xf

    iput v2, p0, Lcom/nielsen/app/sdk/s;->A:I

    .line 2368
    :goto_d
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_breakout"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2369
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 2370
    :cond_23
    const-string v2, ""

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->j:Ljava/lang/String;

    :goto_e
    move v3, v1

    .line 2374
    goto/16 :goto_0

    .line 2253
    :cond_24
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "dpr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_25

    .line 2254
    const/4 v2, 0x1

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2255
    :cond_25
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "dprid3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_26

    .line 2256
    const/4 v2, 0x2

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2257
    :cond_26
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "drm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_27

    .line 2258
    const/4 v2, 0x6

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2259
    :cond_27
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "mtvr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_28

    .line 2260
    const/4 v2, 0x3

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2261
    :cond_28
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "ocr"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_29

    .line 2262
    const/4 v2, 0x4

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2263
    :cond_29
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    const-string v3, "vc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_b

    .line 2264
    const/4 v2, 0x5

    iput v2, p0, Lcom/nielsen/app/sdk/s;->e:I

    goto/16 :goto_2

    .line 2272
    :cond_2a
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    const-string v3, "impression"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2b

    .line 2273
    const/4 v2, 0x0

    iput v2, p0, Lcom/nielsen/app/sdk/s;->c:I

    goto/16 :goto_3

    .line 2274
    :cond_2b
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    const-string v3, "episode"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2c

    .line 2275
    const/4 v2, 0x1

    iput v2, p0, Lcom/nielsen/app/sdk/s;->c:I

    goto/16 :goto_3

    .line 2276
    :cond_2c
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->o:Ljava/lang/String;

    const-string v3, "daypart"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2d

    .line 2277
    const/4 v2, 0x4

    iput v2, p0, Lcom/nielsen/app/sdk/s;->c:I

    goto/16 :goto_3

    .line 2279
    :cond_2d
    const/4 v2, 0x3

    iput v2, p0, Lcom/nielsen/app/sdk/s;->c:I

    goto/16 :goto_3

    .line 2287
    :cond_2e
    const-string v2, ""

    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    goto/16 :goto_4

    .line 2294
    :cond_2f
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->t:J

    goto/16 :goto_5

    .line 2300
    :cond_30
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->v:J

    goto/16 :goto_6

    .line 2306
    :cond_31
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->y:J

    goto/16 :goto_7

    .line 2320
    :cond_32
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->s:J

    goto/16 :goto_8

    .line 2338
    :cond_33
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->w:J

    goto/16 :goto_9

    .line 2344
    :cond_34
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->x:J

    goto/16 :goto_a

    .line 2354
    :cond_35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nielsen/app/sdk/s;->B:I

    goto/16 :goto_b

    .line 2360
    :cond_36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nielsen/app/sdk/s;->z:I

    goto/16 :goto_c

    .line 2366
    :cond_37
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/nielsen/app/sdk/s;->A:I

    goto/16 :goto_d

    .line 2372
    :cond_38
    iput-object v2, p0, Lcom/nielsen/app/sdk/s;->j:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_e

    :cond_39
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private a(Lcom/nielsen/app/sdk/a$b;)V
    .locals 2

    .prologue
    .line 1484
    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$b;->d()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/nielsen/app/sdk/s;->a(J)Z

    .line 1486
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->a:Lcom/nielsen/app/sdk/k$a;

    if-eqz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->a:Lcom/nielsen/app/sdk/k$a;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/k$a;->a()Z

    .line 1489
    :cond_0
    return-void
.end method

.method private a(J)Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 1411
    .line 1413
    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->x:J

    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->u:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return v0

    .line 1416
    :cond_1
    iget v1, p0, Lcom/nielsen/app/sdk/s;->e:I

    packed-switch v1, :pswitch_data_0

    .line 1425
    iget-object v1, p0, Lcom/nielsen/app/sdk/s;->G:Lcom/nielsen/app/sdk/b;

    invoke-virtual {v1}, Lcom/nielsen/app/sdk/b;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1427
    iget v1, p0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/nielsen/app/sdk/s;->c:I

    if-ne v1, v6, :cond_0

    .line 1431
    :cond_2
    invoke-direct {p0, p1, p2, v6}, Lcom/nielsen/app/sdk/s;->a(JZ)Z

    move-result v0

    goto :goto_0

    .line 1420
    :pswitch_0
    invoke-direct {p0}, Lcom/nielsen/app/sdk/s;->f()Z

    move-result v0

    goto :goto_0

    .line 1416
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private a(JZ)Z
    .locals 27

    .prologue
    .line 1151
    const/16 v25, 0x0

    .line 1153
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 1154
    :cond_0
    const/16 v25, 0x0

    .line 1340
    :cond_1
    :goto_0
    return v25

    .line 1156
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1157
    :cond_3
    const/16 v2, 0x8

    const/16 v3, 0x45

    const-string v4, "(%s) There should be a credit flag character defined"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 1158
    const/16 v25, 0x0

    goto :goto_0

    .line 1160
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->n:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v16

    .line 1162
    const/4 v3, 0x0

    .line 1164
    const/4 v2, 0x1

    new-array v12, v2, [I

    .line 1165
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v12, v2

    .line 1167
    const/4 v2, 0x1

    new-array v13, v2, [I

    .line 1168
    const/4 v2, 0x0

    const/4 v4, -0x1

    aput v4, v13, v2

    .line 1170
    const/4 v2, 0x1

    new-array v14, v2, [I

    .line 1171
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v14, v2

    .line 1173
    const/4 v2, 0x1

    new-array v15, v2, [I

    .line 1174
    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v4, v15, v2

    .line 1176
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 1177
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v7, v2

    .line 1179
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    .line 1180
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v8, v2

    .line 1182
    const/4 v2, 0x1

    new-array v10, v2, [Ljava/lang/String;

    .line 1183
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v10, v2

    .line 1185
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 1186
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v11, v2

    .line 1188
    const/4 v2, 0x1

    new-array v9, v2, [Ljava/lang/String;

    .line 1189
    const/4 v2, 0x0

    const-string v4, ""

    aput-object v4, v9, v2

    .line 1191
    const/16 v17, 0x0

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_5

    .line 1193
    const/16 v17, 0x1

    .line 1195
    :cond_5
    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x64

    if-ge v2, v4, :cond_1

    if-ltz v3, :cond_1

    .line 1197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    move/from16 v18, p3

    invoke-virtual/range {v3 .. v18}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetTimerPing(JLjava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I[ICZZ)I

    move-result v3

    .line 1198
    if-ltz v3, :cond_1

    .line 1205
    const/16 v4, 0x49

    const-string v5, "(%s) ping info crdt(%d) sgnt(%d) sgPlTme(%d) ssPlTme(%d) pc(%s) fd(%s) ptrn(%s) stn(%s) pngTme(%d) brkt(%s) prfx(%s)"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x2

    const/16 v19, 0x0

    aget v19, v12, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x3

    const/16 v19, 0x0

    aget v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x4

    const/16 v19, 0x0

    aget v19, v15, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0x5

    const/16 v19, 0x0

    aget-object v19, v7, v19

    aput-object v19, v6, v18

    const/16 v18, 0x6

    const/16 v19, 0x0

    aget-object v19, v8, v19

    aput-object v19, v6, v18

    const/16 v18, 0x7

    const/16 v19, 0x0

    aget-object v19, v10, v19

    aput-object v19, v6, v18

    const/16 v18, 0x8

    const/16 v19, 0x0

    aget-object v19, v11, v19

    aput-object v19, v6, v18

    const/16 v18, 0x9

    const/16 v19, 0x0

    aget v19, v13, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v6, v18

    const/16 v18, 0xa

    const/16 v19, 0x0

    aget-object v19, v9, v19

    aput-object v19, v6, v18

    const/16 v18, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    move-object/from16 v19, v0

    aput-object v19, v6, v18

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1221
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_c

    .line 1223
    if-lez v3, :cond_7

    .line 1225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "onViewWon"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 1226
    if-eqz v2, :cond_6

    .line 1227
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 1229
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_segmentPrefix"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 1236
    :cond_7
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nielsen/app/sdk/s;->x:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->u:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 1237
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/nielsen/app/sdk/s;->u:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/nielsen/app/sdk/s;->u:J

    .line 1240
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v3, "nol_fdoffset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v3, "nol_pcoffset"

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_d

    .line 1241
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v17 .. v24}, Lcom/nielsen/app/sdk/b$c;->b(JJJLjava/lang/String;)Z

    .line 1263
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v3, "nol_xorSeed"

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    .line 1264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1265
    :cond_a
    const-string v2, ""

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    .line 1269
    :cond_b
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1271
    const/4 v2, 0x0

    aget v2, v12, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1272
    const-string v4, "nol_currSeg"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const/4 v2, 0x0

    aget v2, v15, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1275
    const-string v4, "nol_timeSpentViewing"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const/4 v2, 0x0

    aget v2, v14, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1278
    const-string v4, "nol_segmentTimeSpent"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nielsen/app/sdk/s;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1281
    const-string v4, "nol_tagPresence"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v2, "nol_breakout"

    const/4 v4, 0x0

    aget-object v4, v9, v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v2, "nol_duration"

    const/4 v4, 0x0

    aget-object v4, v10, v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-string v2, "nol_segmentPrefix"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    move-object/from16 v0, p0

    iget v2, v0, Lcom/nielsen/app/sdk/s;->e:I

    packed-switch v2, :pswitch_data_0

    .line 1313
    :pswitch_0
    const/16 v2, 0x57

    const-string v3, "(%s) processor type (%s) should not generate pings here"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Lcom/nielsen/app/sdk/t;->b:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nielsen/app/sdk/s;->e:I

    aget-object v6, v6, v7

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 1315
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1233
    :cond_c
    if-nez v3, :cond_7

    .line 1195
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1245
    :cond_d
    const-wide/16 v2, 0x0

    .line 1246
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "baseServerTime"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1247
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    .line 1248
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1250
    :cond_e
    const-wide/16 v22, 0x0

    .line 1251
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "baseDeviceTime"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1252
    if-eqz v4, :cond_f

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1253
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v22

    .line 1255
    :cond_f
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_10

    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-nez v4, :cond_14

    .line 1256
    :cond_10
    const-wide/16 v20, 0x0

    .line 1257
    const-wide/16 v22, 0x0

    .line 1260
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v17, v0

    const/4 v2, 0x0

    aget v2, v13, v2

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v17 .. v24}, Lcom/nielsen/app/sdk/b$c;->b(JJJLjava/lang/String;)Z

    goto/16 :goto_2

    .line 1293
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v2, v4}, Lcom/nielsen/app/sdk/i;->a(I)Ljava/lang/String;

    move-result-object v2

    .line 1294
    const-string v4, "nol_stationId"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1298
    :pswitch_2
    const/4 v5, 0x4

    .line 1319
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v4, "nol_fdoffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_11

    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 1320
    :goto_5
    const-string v4, "nol_fdcid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v4, "nol_pcoffset"

    invoke-virtual {v2, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    aget-object v2, v11, v2

    .line 1324
    :goto_6
    const-string v4, "nol_pccid"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string v2, "nol_xorSeed"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->L:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    const-string v2, "nol_product"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->J:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1330
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 1332
    invoke-direct/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->g()Ljava/lang/String;

    move-result-object v8

    .line 1333
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    .line 1334
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->d:I

    move-wide/from16 v6, p1

    invoke-virtual/range {v2 .. v8}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J

    .line 1335
    const/4 v2, 0x1

    :goto_7
    move/from16 v25, v2

    .line 1337
    goto/16 :goto_0

    .line 1305
    :pswitch_3
    const/4 v5, 0x3

    .line 1306
    goto :goto_4

    .line 1319
    :cond_11
    const/4 v2, 0x0

    aget-object v2, v8, v2

    goto :goto_5

    .line 1323
    :cond_12
    const/4 v2, 0x0

    aget-object v2, v7, v2

    goto :goto_6

    :cond_13
    move/from16 v2, v25

    goto :goto_7

    :cond_14
    move-wide/from16 v20, v2

    goto/16 :goto_3

    .line 1289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private b(Lcom/nielsen/app/sdk/a$b;)V
    .locals 13

    .prologue
    const/16 v12, 0x49

    const-wide/16 v4, 0x0

    const/4 v11, 0x2

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 1561
    iget-wide v0, p0, Lcom/nielsen/app/sdk/s;->q:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/nielsen/app/sdk/s;->r:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 1883
    :cond_0
    :goto_0
    return-void

    .line 1564
    :cond_1
    if-eqz p1, :cond_0

    .line 1568
    const-string v1, ""

    .line 1571
    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$b;->d()J

    move-result-wide v4

    .line 1575
    :try_start_0
    invoke-virtual {p1}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v7

    .line 1576
    if-eqz v7, :cond_0

    :try_start_1
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1579
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    if-nez v0, :cond_3

    .line 1580
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to process metadata ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Missing parameter object"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1712
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 1714
    :goto_1
    invoke-static {}, Lcom/nielsen/app/sdk/l;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1715
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppConfig Nielsen AppSDK: Failed parsing metadata JSON - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    :cond_2
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to load metadata("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1583
    :cond_3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1585
    invoke-static {}, Lcom/nielsen/app/sdk/t;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1587
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    sparse-switch v0, :sswitch_data_0

    .line 1607
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 1609
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_contentType"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1612
    :cond_5
    const-string v0, "radio,content"

    .line 1613
    iget-object v1, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_contentType"

    invoke-virtual {v1, v2, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v1, v0

    .line 1615
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_vidtype"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1616
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1617
    :cond_7
    const-string v0, "ad"

    move-object v6, v0

    .line 1619
    :goto_3
    const-string v0, "ad"

    .line 1620
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 1621
    array-length v1, v2

    if-lez v1, :cond_23

    .line 1623
    array-length v8, v2

    move v1, v3

    :goto_4
    if-ge v1, v8, :cond_23

    aget-object v9, v2, v1

    .line 1625
    invoke-virtual {v9, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    .line 1626
    const-string v0, "content"

    move-object v2, v0

    .line 1632
    :goto_5
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_vidtype"

    invoke-virtual {v0, v1, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    .line 1635
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_ac"

    const-string v6, "content"

    invoke-virtual {v0, v1, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_c3"

    const-string v6, "st,a"

    invoke-virtual {v0, v1, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1642
    :goto_6
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_assetid"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1643
    if-nez v0, :cond_22

    .line 1644
    const-string v0, ""

    move-object v1, v0

    .line 1646
    :goto_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_davState"

    const-string v8, "0"

    invoke-virtual {v0, v6, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1648
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onCmsDetected"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1649
    if-nez v0, :cond_8

    .line 1650
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onLoadMetadata"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1652
    :cond_8
    if-eqz v0, :cond_d

    .line 1654
    iget-object v6, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 1656
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_disabled"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v0, :cond_d

    .line 1658
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-eq v0, v10, :cond_9

    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 1660
    :cond_9
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 1662
    iput-object v1, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    .line 1663
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetStationId(JLjava/lang/String;)Z

    .line 1665
    iget v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    if-ne v0, v11, :cond_c

    .line 1667
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 1668
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 1719
    :catch_1
    move-exception v0

    .line 1720
    :goto_8
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load metadata("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1592
    :sswitch_0
    :try_start_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_assetid"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/b$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1593
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1594
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1596
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_assetid"

    invoke-virtual {v2, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1597
    if-eqz v2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    .line 1598
    invoke-direct {p0, p1}, Lcom/nielsen/app/sdk/s;->a(Lcom/nielsen/app/sdk/a$b;)V

    goto/16 :goto_2

    .line 1623
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 1638
    :cond_b
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_ac"

    const-string v6, "ad"

    invoke-virtual {v0, v1, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_c3"

    const-string v6, ""

    invoke-virtual {v0, v1, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1671
    :cond_c
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    goto/16 :goto_0

    .line 1677
    :cond_d
    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_13

    .line 1679
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onAssetIdChanged"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1680
    if-nez v0, :cond_e

    .line 1681
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_tagFilter"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1683
    :cond_e
    if-eqz v0, :cond_f

    .line 1684
    iget-object v6, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 1686
    :cond_f
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onComplete"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1687
    if-eqz v0, :cond_10

    .line 1688
    iget-object v6, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 1690
    :cond_10
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_disabled"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v0, :cond_13

    .line 1692
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-eq v0, v10, :cond_11

    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    .line 1694
    :cond_11
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 1696
    iput-object v1, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    .line 1697
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetStationId(JLjava/lang/String;)Z

    .line 1699
    iget v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    if-ne v0, v11, :cond_12

    .line 1701
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 1702
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1705
    :cond_12
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 1723
    :cond_13
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 1728
    :pswitch_0
    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1732
    :try_start_4
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_tagPresence"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1733
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1734
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nielsen/app/sdk/s;->b:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 1738
    :catch_2
    move-exception v0

    const-string v0, "(%s) No tag presence from dictionary."

    new-array v1, v10, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v12, v0, v1}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1749
    :pswitch_1
    :try_start_5
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v0, :cond_16

    .line 1751
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-eq v0, v11, :cond_14

    .line 1753
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 1755
    iput-object v1, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    .line 1756
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v0, v2, v3, v1}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetStationId(JLjava/lang/String;)Z

    .line 1758
    iget v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    if-ne v0, v11, :cond_15

    .line 1760
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 1761
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    :cond_14
    :goto_9
    const/16 v0, 0x49

    const-string v1, "(%s) product is disabled on metadata processing"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 1836
    :catch_3
    move-exception v0

    .line 1837
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to apply metadata("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to DRM/DPR product"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1764
    :cond_15
    :try_start_6
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_segmentPrefix"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    goto :goto_9

    .line 1770
    :cond_16
    const-string v0, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 1772
    if-eqz v1, :cond_1b

    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1b

    .line 1774
    iput-object v1, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    .line 1776
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v2, "nol_fdoffset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v2, "nol_pcoffset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 1777
    :cond_17
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetStationId(JLjava/lang/String;)Z

    .line 1782
    :goto_a
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    if-eq v0, v11, :cond_18

    .line 1784
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    .line 1786
    iget v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    if-ne v0, v11, :cond_1e

    .line 1788
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 1789
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_segmentPrefix"

    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    :cond_18
    :goto_b
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_1b

    .line 1797
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    iget v3, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/nielsen/app/sdk/i;->a(Lcom/nielsen/app/sdk/b$c;ILjava/lang/String;)Z

    move-result v0

    .line 1798
    if-eqz v0, :cond_1f

    .line 1800
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    iget v1, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/i;->b(I)Ljava/util/Map;

    move-result-object v1

    .line 1802
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "stn"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1803
    if-nez v0, :cond_19

    .line 1804
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_serviceFilter"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1806
    :cond_19
    if-eqz v0, :cond_1a

    .line 1807
    iget-object v2, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v2, v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 1809
    :cond_1a
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_disabled"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 1821
    :cond_1b
    :goto_c
    :try_start_7
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_tagPresence"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1823
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c

    .line 1824
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nielsen/app/sdk/s;->b:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 6469
    :cond_1c
    :goto_d
    const/4 v0, 0x0

    :try_start_8
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->O:Z

    goto/16 :goto_0

    .line 1779
    :cond_1d
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->q:J

    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->P:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetStationId(JLjava/lang/String;)Z

    goto :goto_a

    .line 1792
    :cond_1e
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v2, "nol_segmentPrefix"

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    goto :goto_b

    .line 1813
    :cond_1f
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->D:Lcom/nielsen/app/sdk/i;

    iget v2, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v0, v2}, Lcom/nielsen/app/sdk/i;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 1815
    const/16 v2, 0x57

    const-string v3, "(%s) failed to get new station id for AssetId(%s) on time. Use previous value(%s)"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v2, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    .line 1828
    :catch_4
    move-exception v0

    const/16 v0, 0x49

    const-string v1, "(%s) No tag presence from dictionary."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    .line 1833
    :cond_20
    invoke-direct {p0, v4, v5}, Lcom/nielsen/app/sdk/s;->b(J)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 1845
    :pswitch_2
    :try_start_9
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v0, :cond_21

    .line 1846
    const/16 v0, 0x49

    const-string v1, "(%s) product is disabled on metadata processing"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1862
    :catch_5
    move-exception v0

    .line 1863
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to apply metadata("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to OCR product"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1849
    :cond_21
    :try_start_a
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_ocrtag"

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1850
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1852
    invoke-direct {p0}, Lcom/nielsen/app/sdk/s;->g()Ljava/lang/String;

    move-result-object v6

    .line 1853
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nielsen/app/sdk/s;->d:I

    const/4 v3, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J

    .line 1857
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "nol_ocrtag"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1858
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v1, "ocrtag"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_0

    .line 1871
    :pswitch_3
    :try_start_b
    invoke-direct {p0}, Lcom/nielsen/app/sdk/s;->g()Ljava/lang/String;

    move-result-object v6

    .line 1872
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    const/4 v1, 0x1

    iget v2, p0, Lcom/nielsen/app/sdk/s;->d:I

    const/4 v3, 0x5

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_0

    .line 1875
    :catch_6
    move-exception v0

    .line 1876
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to apply metadata("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to LEGACY product"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1719
    :catch_7
    move-exception v0

    move-object v7, v1

    goto/16 :goto_8

    .line 1712
    :catch_8
    move-exception v0

    goto/16 :goto_1

    :cond_22
    move-object v1, v0

    goto/16 :goto_7

    :cond_23
    move-object v2, v0

    goto/16 :goto_5

    :cond_24
    move-object v6, v0

    goto/16 :goto_3

    .line 1587
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    .line 1723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private b(J)Z
    .locals 1

    .prologue
    .line 1453
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->O:Z

    .line 1455
    invoke-direct {p0, p1, p2}, Lcom/nielsen/app/sdk/s;->a(J)Z

    move-result v0

    return v0
.end method

.method private f()Z
    .locals 13

    .prologue
    const/16 v0, 0x44

    const/16 v12, 0x53

    const/4 v1, 0x1

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    .line 633
    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->r:J

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->q:J

    cmp-long v3, v4, v10

    if-nez v3, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v2

    .line 636
    :cond_1
    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 638
    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v3, v4, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetSessionFdCid(J)Ljava/lang/String;

    move-result-object v4

    .line 639
    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    iget-wide v6, p0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v3, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetSessionPcCid(J)Ljava/lang/String;

    move-result-object v5

    .line 640
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 643
    :cond_3
    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_clocksrc"

    invoke-virtual {v3, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 644
    if-eq v3, v0, :cond_4

    if-eq v3, v12, :cond_4

    move v3, v0

    .line 648
    :cond_4
    if-ne v3, v12, :cond_8

    .line 649
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 653
    :goto_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 654
    :cond_5
    const-string v0, "99"

    .line 656
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v8, p0, Lcom/nielsen/app/sdk/s;->i:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 661
    const-string v7, "nol_id3ClockSrc"

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v7, "nol_id3Data"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v0, "nol_product"

    const-string v7, "id3"

    invoke-interface {v6, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-wide v8, p0, Lcom/nielsen/app/sdk/s;->h:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 667
    const-string v7, "nol_id3FirstTs"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-wide v8, p0, Lcom/nielsen/app/sdk/s;->i:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 670
    const-string v7, "nol_id3Seq"

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    const-string v0, "nol_fdcid"

    invoke-interface {v6, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v0, "nol_pccid"

    invoke-interface {v6, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 675
    if-ne v3, v12, :cond_9

    .line 677
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 679
    invoke-direct {p0}, Lcom/nielsen/app/sdk/s;->g()Ljava/lang/String;

    move-result-object v6

    .line 680
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 682
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    iget v2, p0, Lcom/nielsen/app/sdk/s;->d:I

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->h:J

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J

    .line 684
    iput-wide v10, p0, Lcom/nielsen/app/sdk/s;->h:J

    .line 685
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    .line 687
    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    :cond_7
    :goto_2
    move v2, v1

    .line 706
    goto/16 :goto_0

    .line 651
    :cond_8
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_tsvFlagDefault"

    invoke-virtual {v0, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 692
    :cond_9
    const/16 v0, 0x49

    const-string v3, "Processor loaded UNPARSED ping to UPLOAD table"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 694
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 697
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    const/4 v3, 0x7

    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->h:J

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/nielsen/app/sdk/a;->a(IIIJLjava/lang/String;)J

    .line 699
    iput-wide v10, p0, Lcom/nielsen/app/sdk/s;->h:J

    .line 700
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    .line 702
    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/nielsen/app/sdk/s;->i:J

    goto :goto_2
.end method

.method private g()Ljava/lang/String;
    .locals 9

    .prologue
    const/16 v8, 0x49

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 720
    const-string v3, ""

    .line 722
    iget-wide v4, p0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_0

    .line 778
    :goto_0
    return-object v3

    .line 727
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    .line 729
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b$c;->b()Ljava/lang/String;

    move-result-object v0

    .line 731
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 732
    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_iagData"

    invoke-virtual {v4, v5, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 740
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "onPingSend"

    invoke-virtual {v0, v4}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 741
    if-nez v0, :cond_2

    .line 742
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "nol_tagFilter"

    invoke-virtual {v0, v4}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 743
    :cond_2
    if-eqz v0, :cond_3

    .line 744
    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 747
    :cond_3
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "nol_appdisable"

    invoke-virtual {v0, v4}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 748
    const-string v4, "(%s) Upload ping disabled by App SDK disabled"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v8, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :cond_4
    iget-boolean v4, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_a

    :cond_5
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    .line 752
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "nol_useroptout"

    invoke-virtual {v0, v4}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 753
    const-string v4, "(%s) Upload ping disabled by user opt out"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v8, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 755
    :cond_6
    iget-boolean v4, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_7

    if-eqz v0, :cond_b

    :cond_7
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    .line 757
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v4, "nol_disabled"

    invoke-virtual {v0, v4}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 758
    const-string v4, "(%s) Upload ping disabled by onPingSend filter"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v8, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    .line 760
    :cond_8
    iget-boolean v4, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_9

    if-eqz v0, :cond_c

    :cond_9
    move v0, v2

    :goto_4
    iput-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    .line 762
    iget-boolean v0, p0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v0, :cond_e

    .line 764
    new-array v0, v2, [Z

    aput-boolean v1, v0, v1

    .line 766
    iget-object v3, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    iget-object v4, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;[Z)Ljava/lang/String;

    move-result-object v3

    .line 767
    aget-boolean v0, v0, v1

    if-eqz v0, :cond_d

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "&rnd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/nielsen/app/sdk/w;->s()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 771
    const-string v3, "(%s) PING generated"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-static {v8, v3, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    move-object v3, v0

    .line 778
    goto/16 :goto_0

    .line 737
    :catch_0
    move-exception v0

    const/16 v0, 0x57

    const-string v4, "(%s) Could not execute IAG data processing"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v4, v5}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 750
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 755
    goto :goto_3

    :cond_c
    move v0, v1

    .line 760
    goto :goto_4

    .line 775
    :cond_d
    const-string v0, ""

    goto :goto_5

    :cond_e
    move-object v0, v3

    goto :goto_5
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/nielsen/app/sdk/s;->e:I

    return v0
.end method

.method public final declared-synchronized a(JC)V
    .locals 11

    .prologue
    .line 437
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/nielsen/app/sdk/a$b;

    iget-object v1, p0, Lcom/nielsen/app/sdk/s;->H:Lcom/nielsen/app/sdk/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, -0x1

    iget v4, p0, Lcom/nielsen/app/sdk/s;->d:I

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-wide v6, p1

    move v8, p3

    invoke-direct/range {v0 .. v9}, Lcom/nielsen/app/sdk/a$b;-><init>(Lcom/nielsen/app/sdk/a;JIIJCLjava/lang/String;)V

    .line 438
    iget-object v1, p0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 440
    invoke-virtual {p0}, Lcom/nielsen/app/sdk/s;->join()V

    .line 442
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    iget v1, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v0, v1}, Lcom/nielsen/app/sdk/j;->d(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 447
    :catch_0
    move-exception v0

    const/16 v0, 0x57

    :try_start_1
    const-string v1, "stopping processor id(%d) was interupted while trying to add data into the queue. Stopping processor suspened."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 437
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b()Ljava/util/concurrent/BlockingQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Lcom/nielsen/app/sdk/a$b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method public final c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v0}, Lcom/nielsen/app/sdk/b$c;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/nielsen/app/sdk/s;->N:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Z
    .locals 4

    .prologue
    .line 1897
    iget-wide v0, p0, Lcom/nielsen/app/sdk/s;->x:J

    iget-wide v2, p0, Lcom/nielsen/app/sdk/s;->u:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1898
    const/4 v0, 0x0

    .line 1899
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final run()V
    .locals 32

    .prologue
    .line 511
    const/4 v4, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/app/sdk/s;->f:I

    .line 3457
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    .line 3459
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->v:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->t:J

    mul-long/2addr v6, v8

    long-to-int v5, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->t:J

    long-to-int v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->y:J

    long-to-int v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/app/sdk/s;->j:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/app/sdk/s;->B:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nielsen/app/sdk/s;->c:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/nielsen/app/sdk/s;->A:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nielsen/app/sdk/s;->z:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nielsen/app/sdk/s;->x:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nielsen/app/sdk/s;->s:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    .line 4255
    invoke-virtual/range {v4 .. v16}, Lcom/nielsen/app/sdk/AppNative;->id3TagCreateParam(IIILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;II)J

    move-result-wide v4

    .line 4256
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-nez v6, :cond_1

    .line 4257
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed instantiating the id3Tag object on the native library"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    :catch_0
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    :try_start_1
    const-string v8, "(%s) Thread stopped unexpectedly"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 597
    :try_start_2
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 602
    :cond_0
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_a

    .line 611
    :goto_0
    :try_start_3
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4d

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    .line 6273
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4d

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagDelete(J)Z

    move-result v4

    if-nez v4, :cond_4d

    .line 6274
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed deleting the ID3 tag object on the native library"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 617
    :catch_1
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing ID3 tag native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    :goto_1
    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 619
    :goto_2
    return-void

    .line 3459
    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    .line 3460
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_a

    .line 3464
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_id3Map"

    .line 4488
    iget-object v4, v4, Lcom/nielsen/app/sdk/b$c;->a:Ljava/util/Map;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 3465
    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3467
    const-string v5, "nol_nWebAddress"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3468
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 3469
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetTagIdParseParam(JI)V

    .line 3470
    :cond_2
    const-string v5, "nol_pccid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3471
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3472
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetPcCidParseParam(JI)V

    .line 3473
    :cond_3
    const-string v5, "nol_fdcid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3474
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 3475
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetFdCidParseParam(JI)V

    .line 3476
    :cond_4
    const-string v5, "nol_watermark"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3477
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 3478
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetPduParseParam(JI)V

    .line 3479
    :cond_5
    const-string v5, "nol_pcoffset"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3480
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3481
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetPcOffsetParseParam(JI)V

    .line 3482
    :cond_6
    const-string v5, "nol_fdoffset"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3483
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_7

    .line 3484
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v8, v9, v5}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetFdOffsetParseParam(JI)V

    .line 3485
    :cond_7
    const-string v5, "nol_breakout"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3486
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 3487
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v6, v7, v4}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetBreakoutParseParam(JI)V

    .line 3489
    :cond_8
    const/16 v4, 0xa

    .line 3491
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_chnlCountThrshld"

    invoke-virtual {v5, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3492
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 3493
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3495
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7, v4}, Lcom/nielsen/app/sdk/AppNative;->id3TagSetMaxDaypartEntry(JI)V

    .line 517
    :cond_a
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_b

    .line 519
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/AppNative;->a()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J

    .line 520
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(J)V

    .line 522
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/app/sdk/s;->f:I

    .line 523
    const/16 v22, 0x0

    .line 525
    const/16 v4, 0x49

    const-string v5, "(%s) has started"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 527
    :cond_c
    :goto_3
    if-nez v22, :cond_4a

    .line 531
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->g:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nielsen/app/sdk/a$b;

    .line 533
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->a()C

    move-result v5

    .line 534
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_clocksrc"

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->c()I

    move-result v5

    .line 537
    packed-switch v5, :pswitch_data_0

    .line 570
    const/16 v4, 0x8

    const/16 v6, 0x45

    const-string v7, "(%s) Failed processing data (%s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    sget-object v10, Lcom/nielsen/app/sdk/a;->a:[Ljava/lang/String;

    aget-object v5, v10, v5

    aput-object v5, v8, v9

    invoke-static {v4, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 575
    :catch_2
    move-exception v4

    const/16 v22, 0x1

    .line 580
    goto :goto_3

    .line 540
    :pswitch_0
    const/4 v5, 0x1

    .line 544
    :goto_4
    :try_start_6
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/app/sdk/s;->a(Lcom/nielsen/app/sdk/a$b;)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v22, v5

    .line 545
    goto :goto_3

    .line 4502
    :pswitch_1
    :try_start_7
    const-string v5, ""
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4505
    :try_start_8
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    .line 4508
    if-eqz v4, :cond_c

    .line 4512
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_e
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v6

    .line 4513
    if-eqz v6, :cond_c

    :try_start_9
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c

    .line 4516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    if-nez v5, :cond_e

    .line 4517
    new-instance v4, Ljava/lang/Exception;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Failed to start session ("

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "). Missing parameter object"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4538
    :catch_3
    move-exception v4

    move-object v5, v6

    .line 4540
    :goto_5
    :try_start_a
    invoke-static {}, Lcom/nielsen/app/sdk/l;->a()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4541
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AppConfig Nielsen AppSDK: Failed parsing play JSON - "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4543
    :cond_d
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to start session("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 579
    :catch_4
    move-exception v4

    move/from16 v10, v22

    :goto_6
    const/4 v5, 0x1

    const/16 v6, 0x8

    const/16 v7, 0x45

    :try_start_b
    const-string v8, "(%s) Could not process message"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move/from16 v22, v10

    .line 580
    goto/16 :goto_3

    .line 4520
    :cond_e
    :try_start_c
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4522
    invoke-static {}, Lcom/nielsen/app/sdk/t;->e()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 4526
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v8, "nol_channelName"

    invoke-virtual {v5, v8}, Lcom/nielsen/app/sdk/b$c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4527
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4528
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 4530
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v9, "nol_channelName"

    invoke-virtual {v8, v9}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4531
    if-eqz v8, :cond_f

    invoke-virtual {v8, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_f

    .line 4532
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/app/sdk/s;->a(Lcom/nielsen/app/sdk/a$b;)V

    .line 4536
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4, v7}, Lcom/nielsen/app/sdk/b$c;->a(Lorg/json/JSONObject;)Ljava/util/Map;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_3

    .line 4545
    :catch_5
    move-exception v4

    .line 4546
    :goto_7
    :try_start_d
    new-instance v5, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to start session("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 595
    :catchall_0
    move-exception v4

    move-object v10, v4

    .line 597
    :try_start_e
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_10

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 602
    :cond_10
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_9

    .line 611
    :goto_8
    :try_start_f
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4c

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    .line 6273
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4c

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagDelete(J)Z

    move-result v4

    if-nez v4, :cond_4c

    .line 6274
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed deleting the ID3 tag object on the native library"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 617
    :catch_6
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing ID3 tag native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    .line 595
    :goto_9
    throw v10

    .line 4797
    :pswitch_2
    if-eqz v4, :cond_c

    .line 4800
    :try_start_10
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 4803
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->d()J

    move-result-wide v24

    .line 4804
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;

    move-result-object v9

    .line 4823
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_clocksrc"

    invoke-virtual {v5, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .line 4825
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_11

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1f

    .line 4826
    :cond_11
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/nielsen/app/sdk/AppNative;->id3TagLoad(JLjava/lang/String;Z)Z

    move-result v5

    .line 4830
    :goto_a
    if-eqz v5, :cond_41

    .line 4832
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagIsInfoTag(J)Z

    move-result v26

    .line 4834
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetNewPcCid(J)Ljava/lang/String;

    move-result-object v27

    .line 4835
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetNewFdCid(J)Ljava/lang/String;

    move-result-object v28

    .line 4837
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetSessionPcCid(J)Ljava/lang/String;

    move-result-object v29

    .line 4838
    if-eqz v29, :cond_20

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_20

    .line 4839
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_pccid"

    move-object/from16 v0, v29

    invoke-virtual {v5, v6, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4844
    :goto_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetSessionFdCid(J)Ljava/lang/String;

    move-result-object v10

    .line 4845
    if-eqz v10, :cond_21

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_21

    .line 4846
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_fdcid"

    invoke-virtual {v5, v6, v10}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4851
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagIsSessionFdCidChanged(J)Z

    move-result v5

    .line 4852
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v6, v12, v13}, Lcom/nielsen/app/sdk/AppNative;->id3TagIsSessionPcCidChanged(J)Z

    move-result v30

    .line 4854
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v6, v12, v13}, Lcom/nielsen/app/sdk/AppNative;->id3TagIsSessionCidChanged(J)Z

    move-result v6

    .line 4855
    if-eqz v6, :cond_14

    .line 4857
    move-object/from16 v0, p0

    iget v7, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_13

    .line 4858
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/app/sdk/s;->a(Lcom/nielsen/app/sdk/a$b;)V

    .line 4860
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v4, v12, v13}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetStreamType(J)Ljava/lang/String;

    move-result-object v4

    .line 4861
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v8, "nol_breakout"

    invoke-virtual {v7, v8, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4863
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    invoke-virtual {v4, v12, v13, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagIsTimerCidChanged(JLjava/lang/String;)Z

    move-result v31

    .line 4865
    if-nez v6, :cond_15

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    if-nez v4, :cond_1d

    .line 4867
    :cond_15
    if-eqz v5, :cond_16

    .line 4868
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_fdcid"

    move-object/from16 v0, v28

    invoke-virtual {v4, v6, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4870
    :cond_16
    if-eqz v30, :cond_17

    .line 4871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_pccid"

    move-object/from16 v0, v27

    invoke-virtual {v4, v6, v0}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4873
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onSendId3"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4874
    if-nez v4, :cond_18

    .line 4875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "onId3Detected"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4877
    :cond_18
    if-eqz v4, :cond_22

    .line 4878
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_vidtype"

    invoke-virtual {v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4879
    if-eqz v6, :cond_19

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_19
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1a

    .line 4880
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_vidtype"

    const-string v8, "content"

    invoke-virtual {v6, v7, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4882
    :cond_1a
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_ac"

    invoke-virtual {v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4883
    if-eqz v6, :cond_1b

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v6, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1c

    .line 4884
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_ac"

    const-string v8, "content"

    invoke-virtual {v6, v7, v8}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4886
    :cond_1c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 4888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_disabled"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    if-nez v4, :cond_c

    .line 4901
    :cond_1d
    :goto_d
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_tagPresence"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4902
    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1e

    .line 4903
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/app/sdk/s;->b:I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 4910
    :cond_1e
    :goto_e
    :try_start_12
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v4, :cond_23

    .line 4911
    const/16 v4, 0x49

    const-string v5, "(%s) disabled on ID3 processing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 4828
    :cond_1f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v9, v8}, Lcom/nielsen/app/sdk/AppNative;->id3TagLoad(JLjava/lang/String;Z)Z

    move-result v5

    goto/16 :goto_a

    .line 4841
    :cond_20
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_pccid"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 4848
    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_fdcid"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_c

    .line 4893
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    if-nez v4, :cond_1d

    .line 4894
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    goto :goto_d

    .line 4907
    :catch_7
    move-exception v4

    const/16 v4, 0x49

    const-string v6, "(%s) No tag presence from dictionary."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v8

    invoke-static {v4, v6, v7}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_e

    .line 4914
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x3

    if-eq v4, v6, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_c

    .line 4919
    :cond_24
    if-nez v26, :cond_2e

    if-eqz v28, :cond_2e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_2e

    .line 4921
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetFdTimeOffset(J)Ljava/lang/String;

    move-result-object v12

    .line 4923
    if-eqz v5, :cond_2c

    .line 4925
    if-eqz v31, :cond_3b

    .line 4927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_segmentPrefix"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 4929
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "onId3FdCidChanged"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4930
    if-eqz v4, :cond_25

    .line 4931
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_tagFilter"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4933
    :cond_25
    if-eqz v4, :cond_26

    .line 4934
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 4936
    :cond_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "onComplete"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4937
    if-eqz v4, :cond_27

    .line 4938
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 4940
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_disabled"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_c

    .line 4952
    :cond_28
    :goto_f
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->u:J

    .line 4954
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 4955
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 4956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_segmentPrefix"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4959
    :cond_29
    const/16 v4, 0x53

    move/from16 v0, v23

    if-ne v0, v4, :cond_2c

    .line 4962
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/app/sdk/s;->d:I

    const-string v11, "sdk_tsvFdCid"

    invoke-virtual/range {v4 .. v11}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/b$c;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 4963
    if-eqz v4, :cond_2c

    .line 4965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/j;->c(I)Ljava/util/Map;

    move-result-object v5

    .line 4967
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "tsv"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4968
    if-nez v4, :cond_2a

    .line 4969
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_serviceFilter"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 4971
    :cond_2a
    if-eqz v4, :cond_2b

    .line 4972
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v6, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 4974
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_disabled"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_c

    .line 4980
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v5, "nol_fdoffset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2e

    .line 4982
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 4984
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2d

    .line 4986
    const-wide/16 v6, 0x0

    .line 4987
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/j;->a(I)J

    move-result-wide v4

    .line 4988
    const-wide/16 v10, 0x0

    cmp-long v8, v4, v10

    if-lez v8, :cond_51

    .line 4991
    :goto_10
    add-long/2addr v12, v4

    .line 4993
    :cond_2d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v11 .. v18}, Lcom/nielsen/app/sdk/b$c;->a(JJJLjava/lang/String;)J

    move-result-wide v18

    .line 4994
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-wide/from16 v16, v0

    move-wide/from16 v20, v12

    invoke-virtual/range {v15 .. v21}, Lcom/nielsen/app/sdk/AppNative;->id3TagAddOffset(JJJ)Z

    .line 4999
    :cond_2e
    if-nez v26, :cond_38

    if-eqz v27, :cond_38

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_38

    .line 5001
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetPcTimeOffset(J)Ljava/lang/String;

    move-result-object v12

    .line 5003
    if-eqz v30, :cond_37

    .line 5005
    if-eqz v31, :cond_3c

    .line 5007
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_segmentPrefix"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 5009
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "onId3PcCidChanged"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5010
    if-eqz v4, :cond_2f

    .line 5011
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_tagFilter"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5013
    :cond_2f
    if-eqz v4, :cond_30

    .line 5014
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 5016
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "onComplete"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5017
    if-eqz v4, :cond_31

    .line 5018
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 5020
    :cond_31
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_disabled"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_c

    .line 5033
    :cond_32
    :goto_11
    if-eqz v28, :cond_33

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->p:Ljava/lang/String;

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_37

    .line 5035
    :cond_33
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->u:J

    .line 5037
    const-string v10, "sdk_tsvPcCid"

    .line 5040
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_34

    .line 5042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->k:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    .line 5043
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_segmentPrefix"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->l:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5045
    :cond_34
    const/16 v4, 0x53

    move/from16 v0, v23

    if-ne v0, v4, :cond_37

    .line 5047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/app/sdk/s;->d:I

    move-object/from16 v11, v29

    invoke-virtual/range {v4 .. v11}, Lcom/nielsen/app/sdk/j;->a(Lcom/nielsen/app/sdk/b$c;JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 5048
    if-eqz v4, :cond_37

    .line 5050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/j;->c(I)Ljava/util/Map;

    move-result-object v5

    .line 5052
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "tsv"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5053
    if-nez v4, :cond_35

    .line 5054
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_serviceFilter"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 5056
    :cond_35
    if-eqz v4, :cond_36

    .line 5057
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v6, v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/util/List;Ljava/util/Map;)Z

    .line 5059
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_disabled"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->c(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-nez v4, :cond_c

    .line 5066
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v5, "nol_pcoffset"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_38

    .line 5068
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 5069
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_50

    .line 5071
    const-wide/16 v6, 0x0

    .line 5072
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->E:Lcom/nielsen/app/sdk/j;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->d:I

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/j;->b(I)J

    move-result-wide v4

    .line 5074
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_4f

    .line 5077
    :goto_12
    add-long v6, v8, v4

    .line 5079
    :goto_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lcom/nielsen/app/sdk/b$c;->a(JJJLjava/lang/String;)J

    move-result-wide v12

    .line 5080
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/nielsen/app/sdk/AppNative;->id3TagAddOffset(JJJ)Z

    .line 5084
    :cond_38
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    if-nez v4, :cond_42

    .line 5087
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagGetFull(J)Ljava/lang/String;

    move-result-object v5

    .line 5091
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    if-eqz v4, :cond_39

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 5092
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5093
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nielsen/app/sdk/s;->h:J

    .line 5103
    :goto_14
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v7, "nol_url"

    invoke-virtual {v6, v7}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5105
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x32

    .line 5107
    int-to-long v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->w:J

    cmp-long v6, v6, v8

    if-lez v6, :cond_40

    .line 5109
    invoke-direct/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->f()Z

    move-result v4

    if-nez v4, :cond_3a

    .line 5110
    const/16 v4, 0xa

    const/16 v6, 0x45

    const-string v7, "Could not push RAW ID3 message into UPLOAD table"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v8}, Lcom/nielsen/app/sdk/q;->a(ICLjava/lang/String;[Ljava/lang/Object;)V

    .line 5112
    :cond_3a
    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/nielsen/app/sdk/s;->h:J

    .line 5113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    goto/16 :goto_3

    .line 4946
    :cond_3b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_tsvFlagDefault"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4947
    if-eqz v4, :cond_28

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_28

    .line 4948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_tsvFlag"

    invoke-virtual {v5, v6, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 5026
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "nol_tsvFlagDefault"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5027
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_32

    .line 5028
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_tsvFlag"

    invoke-virtual {v5, v6, v4}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_11

    .line 5095
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v6, "nol_id3Delimiter"

    invoke-virtual {v4, v6}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5096
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 5097
    :cond_3e
    const-string v4, "nol_id3Delimiter"

    .line 5099
    :cond_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_14

    .line 5116
    :cond_40
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/app/sdk/s;->m:Ljava/lang/String;

    goto/16 :goto_3

    .line 5122
    :cond_41
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->e:I

    if-eqz v4, :cond_c

    .line 5127
    :cond_42
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->x:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->u:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_43

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_c

    .line 5130
    :cond_43
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v4}, Lcom/nielsen/app/sdk/s;->a(JZ)Z

    goto/16 :goto_3

    .line 559
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/app/sdk/s;->b(Lcom/nielsen/app/sdk/a$b;)V

    goto/16 :goto_3

    .line 5354
    :pswitch_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_c

    .line 5357
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->x:J

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/nielsen/app/sdk/s;->u:J

    cmp-long v5, v6, v8

    if-nez v5, :cond_44

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->c:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_c

    .line 5360
    :cond_44
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nielsen/app/sdk/s;->O:Z

    if-nez v5, :cond_c

    .line 5363
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x1

    if-eq v5, v6, :cond_45

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x6

    if-eq v5, v6, :cond_45

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/app/sdk/s;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    .line 5366
    :cond_45
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    if-eqz v5, :cond_46

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    const-string v6, "nol_cmsoffset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_c

    .line 5369
    :cond_46
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/nielsen/app/sdk/s;->C:Z

    if-eqz v5, :cond_47

    .line 5370
    const/16 v4, 0x49

    const-string v5, "(%s) product is disabled on playhead processing"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 5373
    :cond_47
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->d()J

    move-result-wide v16

    .line 5376
    invoke-virtual {v4}, Lcom/nielsen/app/sdk/a$b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 5378
    const-wide/16 v8, 0x0

    .line 5379
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "baseServerTime"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5380
    if-eqz v4, :cond_48

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_48

    .line 5381
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 5383
    :cond_48
    const-wide/16 v10, 0x0

    .line 5384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    const-string v5, "baseDeviceTime"

    invoke-virtual {v4, v5}, Lcom/nielsen/app/sdk/b$c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5385
    if-eqz v4, :cond_49

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_49

    .line 5386
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 5388
    :cond_49
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/nielsen/app/sdk/s;->M:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lcom/nielsen/app/sdk/b$c;->a(JJJLjava/lang/String;)J

    move-result-wide v12

    .line 5389
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/nielsen/app/sdk/s;->q:J

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/nielsen/app/sdk/AppNative;->id3TagAddOffset(JJJ)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 5392
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    invoke-direct {v0, v1, v2, v4}, Lcom/nielsen/app/sdk/s;->a(JZ)Z
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_3

    .line 582
    :cond_4a
    const/4 v4, 0x2

    :try_start_13
    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/app/sdk/s;->f:I

    .line 584
    const/16 v4, 0x49

    const-string v5, "(%s) thread is finished"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/nielsen/app/sdk/q;->a(CLjava/lang/String;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 597
    :try_start_14
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4b

    .line 599
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->r:J

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->a(J)V

    .line 600
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->K:Lcom/nielsen/app/sdk/b$c;

    invoke-virtual {v4}, Lcom/nielsen/app/sdk/b$c;->a()V

    .line 602
    :cond_4b
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->r:J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    .line 611
    :goto_15
    :try_start_15
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4e

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/app/sdk/s;->F:Lcom/nielsen/app/sdk/AppNative;

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/nielsen/app/sdk/s;->q:J

    .line 6273
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_4e

    invoke-virtual {v4, v6, v7}, Lcom/nielsen/app/sdk/AppNative;->id3TagDelete(J)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 6274
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "Failed deleting the ID3 tag object on the native library"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_8

    .line 617
    :catch_8
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing ID3 tag native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    goto/16 :goto_1

    .line 606
    :catch_9
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing parser native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 613
    :cond_4c
    const-wide/16 v4, 0x0

    :try_start_16
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_6

    goto/16 :goto_9

    .line 606
    :catch_a
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing parser native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 613
    :cond_4d
    const-wide/16 v4, 0x0

    :try_start_17
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto/16 :goto_2

    .line 606
    :catch_b
    move-exception v4

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/16 v7, 0x45

    const-string v8, "(%s) failed releasing parser native object"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/nielsen/app/sdk/s;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static/range {v4 .. v9}, Lcom/nielsen/app/sdk/q;->a(Ljava/lang/Throwable;ZICLjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_15

    .line 613
    :cond_4e
    const-wide/16 v4, 0x0

    :try_start_18
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/nielsen/app/sdk/s;->q:J
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_8

    goto/16 :goto_2

    .line 579
    :catch_c
    move-exception v4

    move v10, v5

    goto/16 :goto_6

    .line 4545
    :catch_d
    move-exception v4

    move-object v6, v5

    goto/16 :goto_7

    .line 4538
    :catch_e
    move-exception v4

    goto/16 :goto_5

    :cond_4f
    move-wide v4, v6

    goto/16 :goto_12

    :cond_50
    move-wide v6, v8

    goto/16 :goto_13

    :cond_51
    move-wide v4, v6

    goto/16 :goto_10

    :pswitch_5
    move/from16 v5, v22

    goto/16 :goto_4

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

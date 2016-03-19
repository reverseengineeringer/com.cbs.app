.class public final Lcom/nielsen/collection/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static S:Lcom/nielsen/collection/f;


# instance fields
.field public A:I

.field public B:Ljava/lang/Integer;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public F:Ljava/lang/Integer;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/Integer;

.field public I:Ljava/lang/Integer;

.field public J:Ljava/lang/Integer;

.field public K:Ljava/lang/Integer;

.field public L:Ljava/lang/Integer;

.field public M:Ljava/lang/Integer;

.field public N:Ljava/lang/Integer;

.field public O:Ljava/lang/Integer;

.field public P:Ljava/lang/Integer;

.field public Q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public R:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private T:Lcom/nielsen/collection/b;

.field private U:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private V:Ljava/lang/Number;

.field private W:Ljava/lang/Boolean;

.field private X:Ljava/lang/Boolean;

.field public a:Lcom/nielsen/collection/e;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/Number;

.field public f:Ljava/lang/Boolean;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/Integer;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/Integer;

.field public x:Ljava/lang/Boolean;

.field public y:Ljava/lang/Integer;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/nielsen/collection/b;

    invoke-direct {v0}, Lcom/nielsen/collection/b;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/f;->T:Lcom/nielsen/collection/b;

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->V:Ljava/lang/Number;

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->W:Ljava/lang/Boolean;

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->X:Ljava/lang/Boolean;

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->b:Ljava/lang/String;

    .line 47
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->c:Ljava/lang/String;

    .line 51
    const/16 v0, 0x73a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->e:Ljava/lang/Number;

    .line 54
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->f:Ljava/lang/Boolean;

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->p:Ljava/lang/Integer;

    .line 67
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->q:Ljava/lang/String;

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->r:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->s:Ljava/lang/String;

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->t:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->x:Ljava/lang/Boolean;

    .line 77
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->y:Ljava/lang/Integer;

    .line 78
    const-string v0, "0"

    iput-object v0, p0, Lcom/nielsen/collection/f;->z:Ljava/lang/String;

    .line 80
    iput v1, p0, Lcom/nielsen/collection/f;->A:I

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    .line 88
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->H:Ljava/lang/Integer;

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->J:Ljava/lang/Integer;

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->K:Ljava/lang/Integer;

    .line 92
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->L:Ljava/lang/Integer;

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->P:Ljava/lang/Integer;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    .line 138
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "CreateSummation"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PlayActual"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PlayLocation"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "SoundActual"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "FocusActual"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "SoundIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "ScreenIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "SeekIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "ClickIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "DownloadIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "ExplicitRating"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "SaveIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "ShareIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PublishIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "InteractIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "VideoLength"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "FocusPings"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "MuteIndex"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PlayMax"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "StopState"

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->W:Ljava/lang/Boolean;

    .line 159
    return-void
.end method

.method public static a(Ljava/util/Map;)Lcom/nielsen/collection/f;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/nielsen/collection/f;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 163
    sget-object v0, Lcom/nielsen/collection/f;->S:Lcom/nielsen/collection/f;

    if-nez v0, :cond_e

    .line 164
    new-instance v7, Lcom/nielsen/collection/f;

    invoke-direct {v7}, Lcom/nielsen/collection/f;-><init>()V

    .line 165
    sput-object v7, Lcom/nielsen/collection/f;->S:Lcom/nielsen/collection/f;

    const-string v5, "Android"

    const-string v2, "0"

    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    const-string v4, ""

    const-string v1, "3.70"

    .line 1583
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1586
    iput-object v4, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1587
    iget-object v0, v7, Lcom/nielsen/collection/f;->P:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_4

    .line 1588
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "sfcode"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "sfcode"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v0, v11, :cond_10

    .line 1589
    :cond_0
    const-string v0, "http://secure-us.imrworldwide.com/cgi-bin/m?"

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1593
    :goto_1
    iget-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "ci="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "clientid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1594
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "cisuffix"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "cisuffix"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_1

    .line 1595
    iget-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "cisuffix"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1596
    :cond_1
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "vcid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "vcid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_2

    .line 1597
    iget-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&c6=vc,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "vcid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1598
    :cond_2
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "partner"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "partner"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, ""

    if-eq v0, v3, :cond_3

    .line 1599
    iget-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&c4=mn,"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "partner"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1600
    :cond_3
    iget-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&cc=1"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    .line 1602
    :cond_4
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "prod"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_5

    .line 1603
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "prod"

    const-string v4, "vc"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1604
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/nielsen/collection/f;->U:Ljava/util/ArrayList;

    .line 1606
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "clientid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/nielsen/collection/f;->n:Ljava/lang/String;

    .line 1607
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "vcid"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1608
    iget-object v0, v7, Lcom/nielsen/collection/f;->n:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "vcid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->n:Ljava/lang/String;

    .line 1610
    :cond_6
    iget-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    const-string v3, ""

    if-ne v0, v3, :cond_8

    .line 1611
    :cond_7
    const-string v0, "bcflvplayer"

    if-ne v5, v0, :cond_11

    .line 1612
    const-string v0, "bc"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    .line 1626
    :cond_8
    :goto_2
    new-instance v0, Lcom/nielsen/collection/b;

    invoke-direct {v0}, Lcom/nielsen/collection/b;-><init>()V

    iput-object v0, v7, Lcom/nielsen/collection/f;->T:Lcom/nielsen/collection/b;

    .line 1628
    new-instance v0, Lcom/nielsen/collection/e;

    iget-object v3, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v4, v7, Lcom/nielsen/collection/f;->n:Ljava/lang/String;

    iget-object v6, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v8, "IMRID"

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/nielsen/collection/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/nielsen/collection/f;->a:Lcom/nielsen/collection/e;

    .line 1636
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v1, "msgmax"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1637
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_9

    .line 1638
    iput-object v0, v7, Lcom/nielsen/collection/f;->e:Ljava/lang/Number;

    .line 1641
    :cond_9
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v1, "msgint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 1642
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v1, "msgint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v7, Lcom/nielsen/collection/f;->c:Ljava/lang/String;

    .line 1645
    :cond_a
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v1, "focusint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1646
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1650
    :cond_b
    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v1, "pingint"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 1651
    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1656
    :cond_c
    iput-object v2, v7, Lcom/nielsen/collection/f;->z:Ljava/lang/String;

    .line 1660
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->f:Ljava/lang/Boolean;

    .line 1666
    iget-object v0, v7, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    if-nez v0, :cond_d

    .line 1667
    const-string v0, "Android"

    iput-object v0, v7, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    .line 1669
    :cond_d
    const-string v1, "1"

    invoke-static {}, Lcom/nielsen/collection/NielsenVideoBeaconActivity;->a()J

    move-result-wide v2

    iget-object v4, v7, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    move-object v0, v7

    move-object v5, v9

    move-object v6, v9

    move-object v7, v9

    invoke-virtual/range {v0 .. v7}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    :cond_e
    sget-object v0, Lcom/nielsen/collection/f;->S:Lcom/nielsen/collection/f;

    return-object v0

    .line 1583
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Map$Entry;

    .line 1584
    iget-object v8, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1591
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "http://secure-"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "sfcode"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".imrworldwide.com/cgi-bin/m?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/nielsen/collection/f;->g:Ljava/lang/String;

    goto/16 :goto_1

    .line 1613
    :cond_11
    const-string v0, "gen3flvplayer"

    if-ne v5, v0, :cond_12

    .line 1614
    const-string v0, "g3"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 1615
    :cond_12
    const-string v0, "jwflvpluginplayer"

    if-ne v5, v0, :cond_13

    .line 1616
    const-string v0, "jw40"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 1617
    :cond_13
    const-string v0, "jwflvplayer"

    if-ne v5, v0, :cond_14

    .line 1618
    const-string v0, "jw3x"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 1619
    :cond_14
    const-string v0, "tpflvplayer"

    if-ne v5, v0, :cond_15

    .line 1620
    const-string v0, "tp"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 1621
    :cond_15
    const-string v0, "gnjsplayer"

    if-ne v5, v0, :cond_16

    .line 1622
    const-string v0, "gnjs"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2

    .line 1624
    :cond_16
    const-string v0, "ggdef"

    iput-object v0, v7, Lcom/nielsen/collection/f;->o:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private a(J)Ljava/lang/String;
    .locals 11

    .prologue
    .line 678
    const-string v1, ""

    .line 680
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 681
    iget v0, p0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 682
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "CreateSummation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "PlayActual"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "VideoLength"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_7

    .line 683
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PlayActual"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "VideoLength"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_9

    .line 684
    const-wide/16 v0, 0x63

    move-wide v2, v0

    .line 690
    :goto_0
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "FocusPings"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_c

    iget-object v0, p0, Lcom/nielsen/collection/f;->X:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 691
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "FocusActual"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "FocusPings"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 692
    long-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v8, v1

    mul-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, v8

    add-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    move-object v1, v0

    .line 696
    :goto_1
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "MuteIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "SoundIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_b

    .line 697
    const-wide/16 v6, 0xa

    sub-long/2addr v2, v6

    .line 701
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "ScreenIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 702
    const-wide/16 v6, 0xa

    add-long/2addr v2, v6

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "ShareIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "SaveIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "PublishIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "ClickIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 704
    :cond_2
    const-wide/16 v2, 0x63

    .line 705
    :cond_3
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "InteractIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 706
    const-wide/16 v6, 0xa

    add-long/2addr v2, v6

    .line 707
    :cond_4
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "ExplicitRating"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "ExplicitRating"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x5

    if-gt v0, v4, :cond_5

    .line 708
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "ExplicitRating"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v0, v0, 0x14

    int-to-long v2, v0

    .line 709
    :cond_5
    const-wide/16 v6, 0x63

    cmp-long v0, v2, v6

    if-lez v0, :cond_6

    .line 710
    const-wide/16 v2, 0x63

    .line 712
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/nielsen/collection/b$a;->Y:Lcom/nielsen/collection/b$a;

    invoke-virtual {v4}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 713
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "CreateSummation"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_7
    move-object v0, v1

    .line 716
    iget-object v1, p0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_8

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/nielsen/collection/b$a;->z:Lcom/nielsen/collection/b$a;

    invoke-virtual {v2}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/collection/f;->J:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nielsen/collection/f;->K:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|||"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 719
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    .line 720
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/collection/f;->J:Ljava/lang/Integer;

    .line 721
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/collection/f;->K:Ljava/lang/Integer;

    .line 723
    :cond_8
    return-object v0

    .line 685
    :cond_9
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "VideoLength"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_a

    .line 686
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v1, "PlayActual"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x64

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v2, "VideoLength"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v1, v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    move-wide v2, v0

    goto/16 :goto_0

    .line 688
    :cond_a
    const-wide/16 v0, 0x42

    move-wide v2, v0

    goto/16 :goto_0

    .line 698
    :cond_b
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "SoundIndex"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    .line 699
    const-wide/16 v6, 0x5

    add-long/2addr v2, v6

    goto/16 :goto_2

    :cond_c
    move-object v1, v4

    goto/16 :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 530
    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "%20"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 533
    :goto_0
    return-object v0

    .line 532
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 533
    const-string v0, ""

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 215
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/nielsen/collection/f;->D:Ljava/lang/String;

    .line 219
    :goto_0
    const/4 v1, -0x1

    .line 220
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 221
    const-string v0, ""

    .line 230
    :goto_1
    return-object v0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/nielsen/collection/f;->C:Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 223
    if-ltz v2, :cond_2

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "</"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 227
    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "name == "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lenpos1 == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", lenpos2 == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 228
    if-ltz v2, :cond_3

    if-le v1, v2, :cond_3

    .line 229
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 230
    :cond_3
    const-string v0, ""

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "***"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|||"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 729
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/nielsen/collection/f;->x:Ljava/lang/Boolean;

    .line 730
    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .prologue
    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "iag_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 240
    if-eqz v0, :cond_1

    const-string v1, ""

    if-eq v0, v1, :cond_1

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&pr=iag."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 245
    :cond_0
    :goto_0
    return-object p2

    .line 243
    :cond_1
    if-nez p2, :cond_0

    .line 244
    const-string p2, ""

    goto :goto_0
.end method

.method private a()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 187
    iget-object v0, p0, Lcom/nielsen/collection/f;->c:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    move v1, v2

    .line 190
    :goto_0
    array-length v0, v3

    if-lt v1, v0, :cond_0

    .line 210
    return-void

    .line 191
    :cond_0
    aget-object v0, v3, v1

    invoke-static {v0}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 192
    aget-object v0, v3, v1

    const-string v4, "%"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 193
    aget-object v4, v0, v2

    invoke-static {v4}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v7, :cond_3

    .line 194
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 198
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 200
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 201
    :goto_2
    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_5

    .line 206
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 207
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 196
    :cond_3
    iget-object v4, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v6, "VideoLength"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v6, p0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v5

    div-int/lit8 v0, v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    add-int/lit8 v4, v1, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v4, p0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    add-int/lit8 v5, v1, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v0, v4, :cond_4

    goto :goto_2
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 103
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    return-void

    .line 103
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 104
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v3, p1, :cond_1

    .line 106
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 109
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private a(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x7f

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 415
    iget-object v0, p0, Lcom/nielsen/collection/f;->W:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 417
    :cond_0
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 418
    iget-object v2, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v3, "controlsend"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "true"

    if-ne v2, v3, :cond_1c

    .line 421
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    .line 422
    iget-object v0, p0, Lcom/nielsen/collection/f;->O:Ljava/lang/Integer;

    .line 423
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/nielsen/collection/f;->O:Ljava/lang/Integer;

    move-object v2, v0

    .line 432
    :goto_2
    iget-object v0, p0, Lcom/nielsen/collection/f;->P:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 433
    const-string v0, ""

    move-object v3, v0

    .line 505
    :goto_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "legacybeacon"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    :cond_1
    iget-object v0, p0, Lcom/nielsen/collection/f;->U:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 518
    iget-object v4, p0, Lcom/nielsen/collection/f;->U:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 521
    iget-object v4, p0, Lcom/nielsen/collection/f;->a:Lcom/nielsen/collection/e;

    invoke-virtual {v4, v0, v2, v3}, Lcom/nielsen/collection/e;->a([Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 524
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->V:Ljava/lang/Number;

    .line 525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nielsen/collection/f;->U:Ljava/util/ArrayList;

    goto :goto_0

    .line 417
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 426
    :cond_3
    iput-object v0, p0, Lcom/nielsen/collection/f;->O:Ljava/lang/Integer;

    goto :goto_0

    .line 435
    :cond_4
    const-string v3, ""

    .line 436
    iget-object v0, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "prod"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "iag"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_8

    .line 438
    iget-object v0, p0, Lcom/nielsen/collection/f;->r:Ljava/lang/String;

    .line 441
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    .line 442
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&pr=iag.cp,cep"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 450
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "prod"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "vc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_12

    .line 451
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v5, :cond_b

    .line 452
    const-string v3, "&ig=1"

    .line 500
    :cond_6
    :goto_6
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&rnd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 502
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&tp=gg"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_3

    .line 440
    :cond_8
    iget-object v0, p0, Lcom/nielsen/collection/f;->q:Ljava/lang/String;

    goto :goto_4

    .line 443
    :cond_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 444
    const-string v0, ""

    move-object v3, v0

    goto :goto_5

    .line 446
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&pr=iag.cp,soc"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_5

    .line 455
    :cond_b
    const-string v0, "censuscategory"

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-direct {p0, v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 457
    if-eqz v0, :cond_c

    const-string v4, ""

    if-eq v0, v4, :cond_c

    .line 458
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&cg="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 459
    :cond_c
    iget-object v0, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_d

    .line 460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&c3=st,a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 461
    :cond_d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v5, :cond_e

    .line 462
    iget-object v0, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_10

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nielsen/collection/f;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 468
    :cond_e
    :goto_7
    iget-object v0, p0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 469
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_f

    .line 470
    iget-object v0, p0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 471
    :cond_f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&tl="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dav"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_11

    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 465
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nielsen/collection/f;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    .line 471
    :cond_11
    const-string v0, ""

    goto :goto_8

    .line 474
    :cond_12
    iget-object v0, p0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v4, "prod"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "sc"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    .line 475
    const-string v0, "censuscategory"

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-direct {p0, v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 476
    if-eqz v0, :cond_13

    const-string v4, ""

    if-eq v0, v4, :cond_13

    .line 477
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&cg="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    :cond_13
    iget-object v0, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_14

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&c3=st,a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 480
    :cond_14
    iget-object v0, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_15

    .line 481
    iget-object v0, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    .line 482
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&ou="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nielsen/collection/f;->G:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    invoke-static {v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 483
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_17

    .line 484
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "VideoLength"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1b

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&sd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "VideoLength"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    :goto_9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v5, :cond_1a

    .line 491
    iget-object v3, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_18

    .line 492
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nielsen/collection/f;->t:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 495
    :goto_a
    iget-object v0, p0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 496
    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_16

    .line 497
    iget-object v0, p0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 498
    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&tl="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dav"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_19

    :goto_b
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 487
    :cond_17
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v4, "PlayMax"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&du="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    .line 494
    :cond_18
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nielsen/collection/f;->s:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_a

    .line 498
    :cond_19
    const-string v0, ""

    goto :goto_b

    :cond_1a
    move-object v3, v0

    goto/16 :goto_a

    :cond_1b
    move-object v0, v3

    goto/16 :goto_9

    :cond_1c
    move-object v2, v0

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/String;II)Z
    .locals 4

    .prologue
    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 177
    :cond_0
    const-string v0, "setMetricKey"

    const-string v1, "Key is not an index in bucket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "Metric"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error in setMetricKey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 734
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 736
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 740
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(I)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 353
    const-string v1, ""

    .line 358
    if-lez p1, :cond_1

    .line 359
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->t:Ljava/lang/String;

    .line 364
    :goto_0
    if-ne p1, v9, :cond_2

    .line 365
    iget-object v0, p0, Lcom/nielsen/collection/f;->D:Ljava/lang/String;

    .line 369
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    move-object v3, v1

    move v1, v2

    .line 372
    :cond_0
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 405
    :goto_3
    if-lez p1, :cond_a

    .line 406
    iput-object v3, p0, Lcom/nielsen/collection/f;->t:Ljava/lang/String;

    .line 409
    :goto_4
    return-void

    .line 361
    :cond_1
    const-string v0, ""

    iput-object v0, p0, Lcom/nielsen/collection/f;->s:Ljava/lang/String;

    goto :goto_0

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/nielsen/collection/f;->C:Ljava/lang/String;

    goto :goto_1

    .line 373
    :cond_3
    const-string v4, "<nol_"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 374
    if-gez v1, :cond_4

    .line 375
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_3

    .line 378
    :cond_4
    const-string v4, ">"

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    .line 379
    if-gez v5, :cond_5

    .line 380
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_3

    .line 383
    :cond_5
    add-int/lit8 v1, v1, 0x5

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 384
    const-string v1, "</"

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v0, v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 385
    if-gez v1, :cond_6

    .line 386
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    goto :goto_3

    .line 389
    :cond_6
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 390
    add-int/lit8 v1, v1, 0x7

    .line 391
    invoke-static {v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 392
    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-gez v7, :cond_0

    .line 393
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x20

    if-le v7, v8, :cond_7

    .line 394
    const/16 v7, 0x1f

    invoke-virtual {v4, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 395
    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xfe

    if-le v7, v8, :cond_8

    .line 396
    const/16 v7, 0xfd

    invoke-virtual {v5, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 397
    :cond_8
    const-string v7, "raw_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_9

    .line 398
    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 399
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 402
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "&"

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_2

    .line 408
    :cond_a
    iput-object v3, p0, Lcom/nielsen/collection/f;->s:Ljava/lang/String;

    goto/16 :goto_4
.end method


# virtual methods
.method public final a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 30

    .prologue
    .line 748
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "processEvent == ft="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", p1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", p2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", p3="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", p4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p7

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 750
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 751
    const-string v19, ""

    .line 756
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->i:Ljava/lang/String;

    move-object/from16 v0, p1

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->m:Ljava/lang/Object;

    move-object/from16 v0, p4

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->j:Ljava/lang/String;

    move-object/from16 v0, p5

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->k:Ljava/lang/String;

    move-object/from16 v0, p6

    if-ne v4, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->l:Ljava/lang/String;

    move-object/from16 v0, p7

    if-ne v4, v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 759
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/collection/f;->i:Ljava/lang/String;

    .line 760
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/collection/f;->m:Ljava/lang/Object;

    .line 761
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/collection/f;->j:Ljava/lang/String;

    .line 762
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/collection/f;->k:Ljava/lang/String;

    .line 763
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/nielsen/collection/f;->l:Ljava/lang/String;

    .line 764
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->x:Ljava/lang/Boolean;

    .line 767
    const-string v4, "52"

    move-object/from16 v0, p1

    if-ne v0, v4, :cond_2

    .line 768
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    goto :goto_0

    .line 773
    :cond_2
    const-string v4, "videoInfo"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->T:Lcom/nielsen/collection/b;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/nielsen/collection/b;->a(Ljava/lang/String;)V

    .line 776
    :cond_3
    const-string v4, "cust:"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_c

    .line 777
    invoke-static/range {p1 .. p7}, Lcom/nielsen/collection/b;->a(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 781
    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, ""

    if-eq v5, v4, :cond_0

    .line 783
    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 784
    const/4 v4, 0x1

    aget-object v21, v7, v4

    .line 785
    array-length v4, v7

    const/4 v6, 0x2

    if-le v4, v6, :cond_d

    const/4 v4, 0x2

    aget-object v4, v7, v4

    move-object v6, v4

    .line 786
    :goto_2
    array-length v4, v7

    const/4 v8, 0x3

    if-le v4, v8, :cond_e

    const/4 v4, 0x3

    aget-object v4, v7, v4

    move-object v7, v4

    .line 787
    :goto_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    .line 790
    invoke-static/range {v21 .. v21}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1113
    :cond_4
    :goto_4
    :pswitch_1
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1114
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "VideoLength"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_43

    .line 1115
    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1119
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x64

    if-le v8, v9, :cond_5

    .line 1120
    const/16 v4, 0x64

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1121
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x14

    if-ge v8, v9, :cond_6

    .line 1122
    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1123
    :cond_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->x:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1125
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v8, v4, :cond_7

    .line 1126
    invoke-static/range {v21 .. v21}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1127
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xf

    if-eq v8, v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x4

    if-eq v8, v9, :cond_7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x7

    if-ne v4, v8, :cond_0

    .line 1130
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v8, 0x1388

    if-gt v4, v8, :cond_0

    .line 1132
    if-eqz v19, :cond_8

    .line 1133
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1136
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    const-string v8, ""

    if-eq v4, v8, :cond_9

    .line 1137
    new-instance v4, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "|||"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1138
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    .line 1141
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_44

    .line 1142
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v8, "trackcontent"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1145
    :goto_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 1158
    :cond_a
    :pswitch_2
    if-eqz v5, :cond_46

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_46

    .line 1159
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->W:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1160
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->a:Lcom/nielsen/collection/e;

    invoke-virtual {v4, v5}, Lcom/nielsen/collection/e;->a(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 1166
    :goto_7
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->V:Ljava/lang/Number;

    .line 1167
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->L:Ljava/lang/Integer;

    .line 1173
    invoke-static/range {v21 .. v21}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    .line 1175
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->h:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_48

    .line 1176
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1177
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v4, :cond_47

    .line 1178
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    .line 1183
    :goto_8
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1234
    :cond_b
    :goto_9
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->L:Ljava/lang/Integer;

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->V:Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/collection/f;->e:Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lt v4, v5, :cond_0

    .line 1236
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 779
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->T:Lcom/nielsen/collection/b;

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v4 .. v11}, Lcom/nielsen/collection/b;->b(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    goto/16 :goto_1

    .line 785
    :cond_d
    const/4 v4, 0x0

    move-object v6, v4

    goto/16 :goto_2

    .line 786
    :cond_e
    const/4 v4, 0x0

    move-object v7, v4

    goto/16 :goto_3

    .line 792
    :pswitch_3
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    goto/16 :goto_0

    .line 800
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/collection/f;->h:Ljava/lang/String;

    if-eq v4, v5, :cond_f

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".swf"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-gtz v4, :cond_0

    .line 802
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 803
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",1,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/collection/f;->m:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    .line 804
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->j:Ljava/lang/String;

    if-eqz v4, :cond_10

    .line 805
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/nielsen/collection/f;->j:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->u:Ljava/lang/String;

    .line 806
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->m:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    goto/16 :goto_0

    .line 810
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ",51,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 811
    if-eqz v7, :cond_12

    .line 812
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 813
    :cond_12
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->v:Ljava/lang/String;

    move-object v5, v4

    .line 814
    goto/16 :goto_4

    .line 820
    :pswitch_5
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 821
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->p:Ljava/lang/Integer;

    .line 823
    const-string v4, "preroll"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "postroll"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "midroll"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "ad"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 824
    :cond_13
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 825
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->D:Ljava/lang/String;

    move-object v8, v4

    .line 830
    :goto_a
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/nielsen/collection/f;->G:Ljava/lang/String;

    .line 831
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/collection/f;->A:I

    .line 832
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    .line 834
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(I)V

    .line 835
    invoke-static/range {v21 .. v21}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v9, 0xf

    if-ne v4, v9, :cond_14

    .line 836
    const-string v4, "CreateSummation"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 838
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    .line 840
    :cond_14
    const-string v4, "length"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 841
    if-gtz v4, :cond_15

    .line 842
    const/16 v4, 0x1e

    .line 843
    :cond_15
    const-string v9, "VideoLength"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 845
    const-string v4, "title"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 846
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "tit == "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1a

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    if-ne v9, v10, :cond_1a

    .line 848
    if-eqz v4, :cond_19

    const-string v9, ""

    if-eq v4, v9, :cond_19

    .line 849
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v9, v10, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 855
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v4, :cond_16

    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/nielsen/collection/f;->a()V

    .line 857
    :cond_16
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    .line 858
    const-string v4, "StopState"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 860
    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2249
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "metval_title =="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2250
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "prod"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "iag"

    invoke-virtual {v4, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_17

    .line 2253
    const/4 v15, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    .line 2256
    if-eqz v8, :cond_1b

    .line 2257
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->r:Ljava/lang/String;

    .line 2258
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "iagads"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "iagads"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    if-ne v4, v9, :cond_1c

    .line 861
    :cond_17
    :goto_c
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->b(I)V

    goto/16 :goto_4

    .line 827
    :cond_18
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 828
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->C:Ljava/lang/String;

    move-object v8, v4

    goto/16 :goto_a

    .line 851
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_b

    .line 853
    :cond_1a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v9, v10, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_b

    .line 2262
    :cond_1b
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->q:Ljava/lang/String;

    .line 2263
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "iagconten"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "iagconten"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x2

    if-eq v4, v9, :cond_17

    .line 2266
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v9, "sid"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_21

    .line 2267
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v4, "&pr=iag.sid,"

    invoke-direct {v9, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v10, "sid"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    .line 2270
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v10, "tfid"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_22

    .line 2271
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v4, "&pr=iag.tfid,"

    invoke-direct {v10, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v16, "tfid"

    move-object/from16 v0, v16

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v10, v4

    .line 2274
    :goto_e
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v4, "&pr=iag.bcr,"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v17, "clientid"

    move-object/from16 v0, v17

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2275
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "preroll"

    if-eq v7, v4, :cond_54

    .line 2276
    :cond_1d
    const-string v4, "iagcategory"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 2277
    if-eqz v4, :cond_1e

    const-string v11, ""

    if-ne v4, v11, :cond_1f

    .line 2278
    :cond_1e
    const-string v4, "category"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v11}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 2279
    :cond_1f
    if-eqz v4, :cond_23

    const-string v11, ""

    if-eq v4, v11, :cond_23

    .line 2280
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "&pr=iag.pgm,"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v11, v4

    .line 2283
    :goto_f
    const-string v4, "title"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v12}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 2284
    if-eqz v4, :cond_24

    const-string v12, ""

    if-eq v4, v12, :cond_24

    .line 2285
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "&pr=iag.epi,"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    .line 2292
    :goto_10
    const-string v4, "&pr=iag.seg,"

    .line 2293
    invoke-static/range {p7 .. p7}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_26

    .line 2294
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {p7 .. p7}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    .line 2297
    :goto_11
    const-string v4, "pd"

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 2298
    if-nez v4, :cond_20

    .line 2299
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v14, "pd"

    invoke-interface {v4, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2300
    :cond_20
    if-eqz v4, :cond_27

    const-string v14, ""

    if-eq v4, v14, :cond_27

    .line 2301
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "&pr=iag.pd,"

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2304
    :goto_12
    const-string v14, "oad"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v14

    .line 2305
    if-eqz v14, :cond_28

    const-string v15, ""

    if-eq v14, v15, :cond_28

    .line 2306
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v17, "&pr=iag.oad,"

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 2310
    :goto_13
    const-string v15, "sid"

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v9, v1}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2311
    const-string v9, "tfid"

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v15}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 2312
    const-string v9, "bcr"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2313
    const-string v9, "pgm"

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v11, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2314
    const-string v9, "epi"

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v12, v11}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move-object v11, v10

    move-object v12, v15

    move-object/from16 v16, v18

    move-object v10, v9

    move-object/from16 v15, v17

    move-object v9, v4

    .line 2319
    :goto_14
    const-string v4, "fp"

    const/16 v17, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 2320
    const-string v4, "cust1"

    const/16 v18, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v23

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v23

    invoke-direct {v0, v4, v1, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .line 2321
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_2b

    .line 2322
    new-instance v23, Ljava/lang/StringBuilder;

    const-string v4, "&pr=iag.brn,"

    move-object/from16 v0, v23

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v24, "clientid"

    move-object/from16 v0, v24

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2323
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v24, "&pr=iag.cte,"

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v22 .. v22}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 2324
    const-string v4, "midroll"

    if-ne v7, v4, :cond_29

    .line 2325
    const-string v4, "&pr=iag.ap,mid"

    .line 2330
    :goto_15
    const-string v24, "sid"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2331
    const-string v24, "tfid"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v15, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v15

    .line 2332
    const-string v24, "bcr"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v12, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    .line 2333
    const-string v24, "brn"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 2334
    const-string v24, "cte"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v22

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v22

    .line 2335
    const-string v24, "pgm"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v11, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    .line 2336
    const-string v24, "epi"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v10, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 2337
    const-string v24, "seg"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v13, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    .line 2338
    const-string v24, "pd"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v9, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 2339
    const-string v24, "oad"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v14, v2}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 2340
    const-string v24, "pod"

    const/16 v25, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v24

    .line 2341
    const-string v25, "apt"

    const/16 v26, 0x0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 2342
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->r:Ljava/lang/String;

    goto/16 :goto_c

    .line 2269
    :cond_21
    const-string v4, ""

    move-object v9, v4

    goto/16 :goto_d

    .line 2273
    :cond_22
    const-string v4, ""

    move-object v10, v4

    goto/16 :goto_e

    .line 2282
    :cond_23
    const-string v4, "&pr=iag.pgm,general"

    move-object v11, v4

    goto/16 :goto_f

    .line 2287
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2288
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x100

    if-le v12, v13, :cond_25

    .line 2289
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->R:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v13, 0xff

    invoke-virtual {v4, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2290
    :cond_25
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "&pr=iag.epi,"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v12, v4

    goto/16 :goto_10

    .line 2296
    :cond_26
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "1"

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v13, v4

    goto/16 :goto_11

    .line 2303
    :cond_27
    const-string v4, ""

    goto/16 :goto_12

    .line 2308
    :cond_28
    const-string v14, ""

    goto/16 :goto_13

    .line 2326
    :cond_29
    const-string v4, "postroll"

    if-ne v7, v4, :cond_2a

    .line 2327
    const-string v4, "&pr=iag.ap,post"

    goto/16 :goto_15

    .line 2329
    :cond_2a
    const-string v4, "&pr=iag.ap,pre"

    goto/16 :goto_15

    .line 2345
    :cond_2b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->q:Ljava/lang/String;

    goto/16 :goto_c

    .line 865
    :pswitch_6
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 867
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 868
    int-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_2c

    if-nez v4, :cond_2e

    .line 869
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "PlayLocation"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    move-object v8, v4

    .line 872
    :goto_16
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayLocation"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 873
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayActual"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 874
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    .line 875
    const-string v9, "PlayActual"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 878
    const-string v4, "PlayLocation"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 880
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayMax"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v4, v9, :cond_2d

    .line 881
    const-string v4, "PlayMax"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 884
    :cond_2d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/nielsen/collection/f;->a(J)Ljava/lang/String;

    move-result-object v19

    .line 885
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_2f

    .line 886
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->D:Ljava/lang/String;

    .line 889
    :goto_17
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 871
    :cond_2e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v8, v4

    goto/16 :goto_16

    .line 888
    :cond_2f
    const-string v4, ""

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->C:Ljava/lang/String;

    goto :goto_17

    .line 892
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 893
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 894
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    .line 895
    const-string v4, "StopState"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 897
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 898
    const-string v4, "InvPlayParam"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 901
    :cond_30
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayActual"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_32

    .line 902
    :cond_31
    const-string v4, "PlayLocation"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 904
    :cond_32
    const-string v4, "CreateSummation"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 906
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 909
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 910
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 911
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 912
    const-string v4, "InvPauseParam"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 915
    :cond_33
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayLocation"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 916
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_34

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayActual"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 918
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 919
    const-string v9, "PlayActual"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 923
    :cond_34
    const-string v4, "PlayLocation"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 925
    const-string v4, "CreateSummation"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 927
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 930
    :pswitch_9
    const-string v4, "CreateSummation"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->p:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->p:Ljava/lang/Integer;

    .line 935
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-ne v4, v8, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->p:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x5

    if-gt v4, v8, :cond_0

    .line 937
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "StopState"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, 0x1

    if-eq v4, v8, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "StopState"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 939
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 940
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v10, v4

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 941
    const-string v4, "InvStopParam"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 944
    :cond_36
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayLocation"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 945
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_37

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayActual"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 947
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 948
    const-string v9, "PlayActual"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 951
    :cond_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayLocation"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 952
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayMax"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ge v4, v9, :cond_38

    .line 953
    const-string v4, "PlayMax"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 955
    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "PlayActual"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_53

    .line 956
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/nielsen/collection/f;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 957
    :goto_18
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    .line 958
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    .line 959
    const-string v8, "StopState"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/nielsen/collection/f;->N:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 961
    const-string v8, "PlayActual"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 963
    const-string v8, "FocusActual"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 965
    const-string v8, "FocusPings"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v10}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 967
    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v8, :cond_52

    .line 968
    invoke-direct/range {p0 .. p0}, Lcom/nielsen/collection/f;->a()V

    move-object/from16 v19, v4

    .line 969
    goto/16 :goto_4

    .line 971
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->w:Ljava/lang/Integer;

    .line 972
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 973
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_39

    .line 974
    const-string v4, "InvSeekParam1"

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 977
    :cond_39
    invoke-static {v7}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 978
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_3a

    .line 979
    const-string v4, "InvSeekParam"

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v7}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_4

    .line 982
    :cond_3a
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayLocation"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v9, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 983
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_3b

    .line 984
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v10, "PlayActual"

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 985
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 986
    const-string v9, "PlayActual"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 989
    :cond_3b
    const-string v4, "PlayLocation"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 991
    const-string v4, "CreateSummation"

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v9}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 995
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "MuteIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 996
    if-nez v6, :cond_3c

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "on"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_3c

    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3d

    .line 997
    :cond_3c
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 998
    const-string v8, "MuteIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1001
    :cond_3d
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1002
    const-string v8, "MuteIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1007
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "ScreenIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1008
    if-nez v6, :cond_3e

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "on"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_3e

    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3f

    .line 1009
    :cond_3e
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1010
    const-string v8, "ScreenIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 2541
    :cond_3f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->X:Ljava/lang/Boolean;

    .line 2542
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "FocusActual"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 2543
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "FocusActual"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2544
    array-length v4, v8

    const/4 v8, 0x1

    if-le v4, v8, :cond_40

    .line 2545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "FocusActual"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2547
    :cond_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "FocusPings"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v8

    .line 2548
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "FocusPings"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2549
    array-length v4, v8

    const/4 v8, 0x1

    if-le v4, v8, :cond_4

    .line 2550
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "FocusPings"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1017
    :pswitch_d
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_4

    .line 1018
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->H:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_41

    .line 1019
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->H:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 1021
    :cond_41
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->H:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-le v4, v8, :cond_42

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "SoundIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1023
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1024
    const-string v8, "SoundIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 1027
    :cond_42
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->H:Ljava/lang/Integer;

    goto/16 :goto_4

    .line 1032
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "DownloadIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1033
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1034
    const-string v8, "DownloadIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1042
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "ClickIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1043
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1044
    const-string v8, "ClickIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1048
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "ShareIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1049
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1050
    const-string v8, "ShareIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1054
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "SaveIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1055
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1056
    const-string v8, "SaveIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1061
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "PublishIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1062
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1063
    const-string v8, "PublishIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1068
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "InteractIndex"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1069
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1070
    const-string v8, "InteractIndex"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1075
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "ExplicitRating"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1076
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1077
    const-string v8, "ExplicitRating"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    goto/16 :goto_4

    .line 1084
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->I:Ljava/lang/Integer;

    .line 1085
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->J:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->J:Ljava/lang/Integer;

    .line 1086
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->K:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 1087
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->K:Ljava/lang/Integer;

    goto/16 :goto_0

    .line 1091
    :pswitch_16
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_0

    .line 1093
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 1094
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x1

    if-le v4, v9, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->W:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->F:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_0

    .line 1096
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 1098
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayActual"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v11, "PlayLocation"

    invoke-interface {v4, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v10, v4

    add-int/2addr v4, v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1099
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lt v9, v4, :cond_0

    .line 1101
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v9, "PlayActual"

    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 1102
    const-string v9, "PlayActual"

    move-object/from16 v0, p0

    iget v10, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v13, "PlayLocation"

    invoke-interface {v4, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int v4, v12, v4

    add-int/2addr v4, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 1104
    const-string v4, "PlayLocation"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v9, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 1106
    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    invoke-direct {v0, v1, v2}, Lcom/nielsen/collection/f;->a(J)Ljava/lang/String;

    move-result-object v19

    .line 1107
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->d:Ljava/util/List;

    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1117
    :cond_43
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->Q:Ljava/util/Map;

    const-string v8, "VideoLength"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v8, v0, Lcom/nielsen/collection/f;->A:I

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    div-int/lit8 v4, v4, 0x3c

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->y:Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_5

    .line 1144
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->E:Ljava/util/Map;

    const-string v8, "trackads"

    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_6

    .line 1150
    :pswitch_17
    const-string v4, "ggignr"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    .line 1151
    if-eqz v4, :cond_a

    const-string v8, "1"

    if-ne v4, v8, :cond_a

    goto/16 :goto_0

    .line 1163
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->U:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    move-object/from16 v4, v20

    goto/16 :goto_7

    .line 1180
    :cond_47
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/nielsen/collection/f;->B:Ljava/lang/Integer;

    .line 1181
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/nielsen/collection/f;->A:I

    goto/16 :goto_8

    .line 1185
    :cond_48
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->X:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_49

    .line 1186
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1187
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1189
    :cond_49
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->p:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_4a

    .line 1190
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1191
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1192
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v5, :cond_b

    .line 1193
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    goto/16 :goto_9

    .line 1195
    :cond_4a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->d:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_4c

    .line 1196
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->L:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4b

    .line 1197
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1198
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1199
    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v5, :cond_b

    .line 1200
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    goto/16 :goto_9

    .line 1203
    :cond_4b
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1205
    :cond_4c
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->f:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_50

    .line 1206
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->L:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4d

    .line 1207
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1208
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1209
    :cond_4d
    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4f

    .line 1210
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4e

    move-object/from16 v0, p0

    iget v4, v0, Lcom/nielsen/collection/f;->A:I

    if-nez v4, :cond_4e

    .line 1211
    const-string v4, "PlayMax"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/nielsen/collection/f;->A:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/nielsen/collection/f;->a(Ljava/lang/String;II)Z

    .line 1213
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/nielsen/collection/f;->a(Ljava/lang/Integer;)V

    .line 1214
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1215
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/nielsen/collection/f;->M:Ljava/lang/Integer;

    goto/16 :goto_9

    .line 1218
    :cond_4e
    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1221
    :cond_4f
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1223
    :cond_50
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sget-object v9, Lcom/nielsen/collection/b$a;->g:Lcom/nielsen/collection/b$a;

    invoke-virtual {v9}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v9

    if-ne v8, v9, :cond_51

    invoke-static {v6}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_51

    .line 1224
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    .line 1226
    :cond_51
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sget-object v6, Lcom/nielsen/collection/b$a;->i:Lcom/nielsen/collection/b$a;

    invoke-virtual {v6}, Lcom/nielsen/collection/b$a;->ordinal()I

    move-result v6

    if-ne v5, v6, :cond_b

    invoke-static {v7}, Lcom/nielsen/collection/f;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_b

    .line 1227
    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto/16 :goto_9

    :cond_52
    move-object/from16 v19, v4

    goto/16 :goto_4

    :cond_53
    move-object/from16 v4, v19

    goto/16 :goto_18

    :cond_54
    move-object/from16 v28, v11

    move-object v11, v15

    move-object v15, v10

    move-object v10, v12

    move-object/from16 v12, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v28

    goto/16 :goto_14

    .line 790
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_f
        :pswitch_14
        :pswitch_1
        :pswitch_15
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_16
        :pswitch_1
        :pswitch_4
    .end packed-switch

    .line 1145
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

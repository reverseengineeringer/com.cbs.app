.class public final Lcom/adobe/b/c/a/b/a/a/a;
.super Lcom/adobe/b/c/a/b/a/a/e;
.source "SourceFile"


# instance fields
.field private final g:Lcom/adobe/b/a/b;

.field private final h:Lcom/adobe/b/a/b;


# direct methods
.method public constructor <init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Lcom/adobe/b/a/c;)V
    .locals 7

    .prologue
    .line 42
    const-string v3, "check_status"

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/adobe/b/c/a/b/a/a/e;-><init>(Lcom/adobe/b/a/a/f;Lcom/adobe/b/a/b/a;Ljava/lang/String;DLcom/adobe/b/a/c;)V

    .line 54
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/a/a$1;-><init>(Lcom/adobe/b/c/a/b/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a;->g:Lcom/adobe/b/a/b;

    .line 88
    new-instance v0, Lcom/adobe/b/c/a/b/a/a/a$2;

    invoke-direct {v0, p0}, Lcom/adobe/b/c/a/b/a/a/a$2;-><init>(Lcom/adobe/b/c/a/b/a/a/a;)V

    iput-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a;->h:Lcom/adobe/b/a/b;

    .line 1105
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a;->d:Lcom/adobe/b/a/b/a;

    const-string v1, "clock:check_status.get_settings"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/a;->h:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 1106
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a;->d:Lcom/adobe/b/a/b/a;

    const-string v1, "net:check_status_complete"

    iget-object v2, p0, Lcom/adobe/b/c/a/b/a/a/a;->g:Lcom/adobe/b/a/b;

    invoke-virtual {v0, v1, v2, p0}, Lcom/adobe/b/a/b/a;->a(Ljava/lang/String;Lcom/adobe/b/a/b;Ljava/lang/Object;)V

    .line 1107
    iget-object v0, p0, Lcom/adobe/b/c/a/b/a/a/a;->d:Lcom/adobe/b/a/b/a;

    const-string v1, "check_status_interval"

    new-instance v2, Lcom/adobe/b/c/a/b/a/a/a$3;

    invoke-direct {v2, p0}, Lcom/adobe/b/c/a/b/a/a/a$3;-><init>(Lcom/adobe/b/c/a/b/a/a/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/adobe/b/a/b/a;->b(Ljava/lang/String;Lcom/adobe/b/a/b;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/adobe/b/c/a/b/a/a/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public final bridge synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/adobe/b/c/a/b/a/a/e;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.class public final Lcom/comscore/c/d;
.super Lcom/comscore/c/a;


# instance fields
.field private d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/comscore/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/comscore/c/d;->d:Ljava/lang/Boolean;

    return-void
.end method

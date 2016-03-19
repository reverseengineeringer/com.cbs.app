.class final Lcom/adobe/adobepass/accessenabler/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/adobepass/accessenabler/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:I

.field c:Ljava/lang/Object;

.field d:Lcom/adobe/adobepass/accessenabler/d/b$a;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/adobe/adobepass/accessenabler/d/b$a;)V
    .locals 0

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/adobe/adobepass/accessenabler/d/b$a;->a:I

    .line 132
    iput p2, p0, Lcom/adobe/adobepass/accessenabler/d/b$a;->b:I

    .line 133
    iput-object p3, p0, Lcom/adobe/adobepass/accessenabler/d/b$a;->c:Ljava/lang/Object;

    .line 134
    iput-object p4, p0, Lcom/adobe/adobepass/accessenabler/d/b$a;->d:Lcom/adobe/adobepass/accessenabler/d/b$a;

    .line 135
    return-void
.end method

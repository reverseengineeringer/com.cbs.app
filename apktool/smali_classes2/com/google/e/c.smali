.class public abstract enum Lcom/google/e/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/e/c;",
        ">;",
        "Lcom/google/e/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/e/c;

.field public static final enum b:Lcom/google/e/c;

.field public static final enum c:Lcom/google/e/c;

.field public static final enum d:Lcom/google/e/c;

.field public static final enum e:Lcom/google/e/c;

.field private static final synthetic f:[Lcom/google/e/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    new-instance v0, Lcom/google/e/c$1;

    const-string v1, "IDENTITY"

    invoke-direct {v0, v1}, Lcom/google/e/c$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/c;->a:Lcom/google/e/c;

    .line 53
    new-instance v0, Lcom/google/e/c$2;

    const-string v1, "UPPER_CAMEL_CASE"

    invoke-direct {v0, v1}, Lcom/google/e/c$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/c;->b:Lcom/google/e/c;

    .line 72
    new-instance v0, Lcom/google/e/c$3;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    invoke-direct {v0, v1}, Lcom/google/e/c$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/c;->c:Lcom/google/e/c;

    .line 90
    new-instance v0, Lcom/google/e/c$4;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    invoke-direct {v0, v1}, Lcom/google/e/c$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/c;->d:Lcom/google/e/c;

    .line 113
    new-instance v0, Lcom/google/e/c$5;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    invoke-direct {v0, v1}, Lcom/google/e/c$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/e/c;->e:Lcom/google/e/c;

    .line 31
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/google/e/c;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/e/c;->a:Lcom/google/e/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/e/c;->b:Lcom/google/e/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/google/e/c;->c:Lcom/google/e/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/google/e/c;->d:Lcom/google/e/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/google/e/c;->e:Lcom/google/e/c;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/e/c;->f:[Lcom/google/e/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/google/e/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1139
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1141
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1143
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 1144
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1148
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1149
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 1153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1158
    :cond_1
    :goto_1
    return-object p0

    .line 1156
    :cond_2
    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1157
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    .line 1165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1158
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1165
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 31
    .line 2124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2125
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2126
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2127
    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2128
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2130
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2132
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/e/c;
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/google/e/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/e/c;

    return-object v0
.end method

.method public static values()[Lcom/google/e/c;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/google/e/c;->f:[Lcom/google/e/c;

    invoke-virtual {v0}, [Lcom/google/e/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/e/c;

    return-object v0
.end method

.class Lcom/a/a/b/r;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;>;"
        }
    .end annotation
.end field

.field b:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry",
            "<TE;",
            "Lcom/a/a/b/ag;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:Z

.field final synthetic e:Lcom/a/a/b/m;


# direct methods
.method constructor <init>(Lcom/a/a/b/m;)V
    .locals 1
    .parameter

    .prologue
    .line 171
    iput-object p1, p0, Lcom/a/a/b/r;->e:Lcom/a/a/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {p1}, Lcom/a/a/b/m;->a(Lcom/a/a/b/m;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/r;->a:Ljava/util/Iterator;

    .line 173
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/a/a/b/r;->c:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/r;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 182
    iget v0, p0, Lcom/a/a/b/r;->c:I

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/a/a/b/r;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lcom/a/a/b/r;->b:Ljava/util/Map$Entry;

    .line 184
    iget-object v0, p0, Lcom/a/a/b/r;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    invoke-virtual {v0}, Lcom/a/a/b/ag;->a()I

    move-result v0

    iput v0, p0, Lcom/a/a/b/r;->c:I

    .line 186
    :cond_0
    iget v0, p0, Lcom/a/a/b/r;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/a/a/b/r;->c:I

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/a/a/b/r;->d:Z

    .line 188
    iget-object v0, p0, Lcom/a/a/b/r;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/a/a/b/r;->d:Z

    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Lcom/a/a/a/t;->b(ZLjava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/a/a/b/r;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    invoke-virtual {v0}, Lcom/a/a/b/ag;->a()I

    move-result v0

    .line 196
    if-gtz v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/a/a/b/r;->b:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/b/ag;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/a/a/b/ag;->b(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/a/a/b/r;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/a/a/b/r;->e:Lcom/a/a/b/m;

    invoke-static {v0}, Lcom/a/a/b/m;->b(Lcom/a/a/b/m;)J

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/a/a/b/r;->d:Z

    .line 204
    return-void
.end method

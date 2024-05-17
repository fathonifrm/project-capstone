<?= $this->extend('template/index') ?>

<?= $this->section('content') ?>

<section>
    <main>
        <div class="card">
            <a href="<?= base_url('generate'); ?>">
                <span>+</span>
                <p>Mulai Dari Awal</p>
            </a>
        </div>
        <?php foreach ($certificate as $key) : ?>
            <div class="card active">
                <a href="<?= base_url('certificate/' . $key['id']); ?>">
                    <span>&#128452;</span>
                    <p><?= $key['name_certificate']; ?></p>
                </a>
            </div>
        <?php endforeach; ?>
    </main>
</section>

<?= $this->endSection() ?>